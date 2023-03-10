import 'package:chat/pages/home_page.dart';
import 'package:chat/service/database_service.dart';
import 'package:chat/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GroupInfo extends StatefulWidget {
  final String groupId;
  final String groupName;
  final String adminName;
  final String adminId;
  const GroupInfo(
      {Key? key,
      required this.adminName,
      required this.groupName,
      required this.groupId,
      required this.adminId})
      : super(key: key);

  @override
  _GroupInfoState createState() => _GroupInfoState();
}

class _GroupInfoState extends State<GroupInfo> {
  Stream? members;
  @override
  void initState() {
    getMembers();
    super.initState();
  }

  getMembers() async {
    DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .getGroupMembers(widget.groupId)
        .then((val) {
      setState(() {
        members = val;
      });
    });
  }

  String getName(String r) {
    return r.substring(r.indexOf("_") + 1);
  }

  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Group Info"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).primaryColor.withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      widget.groupName.substring(0, 1).toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Group: ${widget.groupName}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Admin: ${getName(widget.adminName)}"),
                    ],
                  ),
                ],
              ),
            ),
            memberList(),
          ],
        ),
      ),
    );
  }

  memberList() {
    return StreamBuilder(
      stream: members,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data['members'] != null) {
            if (snapshot.data['members'].length != 0) {
              return ListView.builder(
                itemCount: snapshot.data['members'].length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Text(
                          getName(snapshot.data['members'][index])
                              .substring(0, 1)
                              .toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      title: Text(getName(snapshot.data['members'][index])),
                      //subtitle: Text(getId(snapshot.data['members'][index])),
                      trailing: widget.adminId ==
                              FirebaseAuth.instance.currentUser!.uid
                          ? widget.adminId !=
                                  getId(snapshot.data['members'][index])
                              ? ElevatedButton(
                                  onPressed: () async {
                                    DatabaseService(
                                      uid: getId(
                                          snapshot.data['members'][index]),
                                    )
                                        .toggleGroupJoin(
                                      widget.groupId,
                                      getName(snapshot.data['members'][index]),
                                      widget.groupName,
                                    )
                                        .whenComplete(() {
                                      showSnackbar(
                                        context,
                                        Colors.green,
                                        "Removed from the group",
                                      );
                                    });
                                  },
                                  child: const Text('Remove'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                                )
                              : ElevatedButton(
                                  onPressed: () async {
                                    DatabaseService(
                                            uid: FirebaseAuth
                                                .instance.currentUser!.uid)
                                        .toggleGroupJoin(
                                            widget.groupId,
                                            getName(widget.adminName),
                                            widget.groupName)
                                        .whenComplete(() {
                                      nextScreenReplace(
                                        context,
                                        const HomePage(),
                                      );
                                      showSnackbar(context, Colors.green,
                                          "Left the group");
                                    });
                                  },
                                  child: const Text('Leave'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                                )
                          : FirebaseAuth.instance.currentUser!.uid ==
                                  getId(snapshot.data['members'][index])
                              ? ElevatedButton(
                                  onPressed: () async {
                                    await FirebaseFirestore.instance
                                        .collection('groups')
                                        .doc(widget.groupId)
                                        .update({
                                      'members': FieldValue.arrayRemove([
                                        FirebaseAuth.instance.currentUser!.uid +
                                            '_' +
                                            getName(
                                                snapshot.data['members'][index])
                                      ])
                                    });
                                    DatabaseService(
                                            uid: FirebaseAuth
                                                .instance.currentUser!.uid)
                                        .toggleGroupJoin(
                                            widget.groupId,
                                            getName(widget.adminName),
                                            widget.groupName)
                                        .whenComplete(() {
                                      nextScreenReplace(
                                        context,
                                        const HomePage(),
                                      );
                                      showSnackbar(context, Colors.green,
                                          "Left the group");
                                    });
                                  },
                                  child: const Text('Leave'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                                )
                              : const Text(''),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: Text("NO MEMBERS"),
              );
            }
          } else {
            return const Center(
              child: Text("NO MEMBERS"),
            );
          }
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          );
        }
      },
    );
  }
}
