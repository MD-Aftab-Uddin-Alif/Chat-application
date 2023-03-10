import 'package:chat/helper/helper_function.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../service/database_service.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  bool isLoading = false;
  QuerySnapshot? searchSnapshot;
  bool hasUserSearched = false;
  String userName = "";
  String admin_id = "";
  bool isJoined = false;
  bool isRequested = false;
  User? user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUserIdandName();
  }

  getCurrentUserIdandName() async {
    await HelperFunctions.getUserNameFromSF().then((value) {
      setState(() {
        userName = value!;
      });
    });
    user = FirebaseAuth.instance.currentUser;
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
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Search",
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Expanded(
                  child:
                  // TextField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(30),
                  //       borderSide: BorderSide.none,
                  //     ),
                  //     fillColor: Color(0xffc2c2c2),
                  //     filled: true,
                  //     hintText: "Search for items in the store",
                  //     suffixIcon: Icon(Icons.search),
                  //   ),
                  // ),
                  TextField(
                    controller: searchController,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search groups.....",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    initiateSearchMethod();
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor),
                )
              : groupList(),
        ],
      ),
    );
  }

  initiateSearchMethod() async {
    if (searchController.text.isNotEmpty) {
      setState(() {
        isLoading = true;
      });
      await DatabaseService()
          .searchByName(searchController.text)
          .then((snapshot) {
        setState(() {
          searchSnapshot = snapshot;
          isLoading = false;
          hasUserSearched = true;
        });
      });
    }
  }

  groupList() {
    return hasUserSearched
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: searchSnapshot!.docs.length,
            itemBuilder: (context, index) {
              return groupTile(
                userName,
                searchSnapshot!.docs[index]['groupId'],
                searchSnapshot!.docs[index]['groupName'],
                searchSnapshot!.docs[index]['admin'],
              );
            },
          )
        : Container();
  }

  joinedOrNot(
      String userName, String groupId, String groupName, String admin) async {
    await DatabaseService(uid: user!.uid)
        .isUserJoined(groupName, groupId, userName)
        .then((value) {
      setState(() {
        isJoined = value;
      });
    });
  }

  requestSendOrNot(
      String userName, String groupId, String groupName, String admin) async {
    await DatabaseService(uid: user!.uid)
        .isRequestSent(groupName, groupId)
        .then((value) {
      setState(() {
        isRequested = value;
      });
    });
  }

  Widget groupTile(
      String userName, String groupId, String groupName, String admin) {
    joinedOrNot(userName, groupId, groupName, admin);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Theme.of(context).primaryColor,
        child: Text(
          groupName.substring(0, 1).toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      title: Text(
        groupName,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text("Admin: ${getName(admin)}"),
      trailing: isJoined
          ? ElevatedButton(
              onPressed: () async {
                await DatabaseService(uid: user!.uid)
                    .toggleGroupJoin(groupId, userName, groupName);
                setState(() {
                  isRequested = false;
                  isJoined = false;
                });
              },
              child: const Text('Leave'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            )
          : isRequested
              ? ElevatedButton(
                  onPressed: () async {
                    await FirebaseFirestore.instance
                        .collection("requests")
                        .doc(admin_id)
                        .collection("members")
                        .doc(groupId + '_' + userName)
                        .delete();
                    setState(() {
                      isRequested = false;
                      isJoined = false;
                    });
                  },
                  child: const Text('Requested'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                )
              : ElevatedButton(
                  onPressed: () async {
                    admin_id = getId(admin);
                    print(admin_id);
                    await FirebaseFirestore.instance
                        .collection("requests")
                        .doc(admin_id)
                        .collection("members")
                        .doc(groupId + '_' + userName)
                        .set({
                      "name": userName,
                      "userId": user!.uid,
                      "groupName": groupName,
                      "groupId": groupId,
                    });

                    setState(() {
                      isRequested = true;
                    });
                  },
                  child: const Text('Join Now'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
    );
  }
}
