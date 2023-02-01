import 'package:chat/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../pages/auth/search_page.dart';
import '../widgets/widgets.dart';

class CSE extends StatefulWidget {
  const CSE({Key? key}) : super(key: key);

  @override
  _CSEState createState() => _CSEState();
}

class _CSEState extends State<CSE> {
  void customLauncher(command) async{
    if(await canLaunch(command)){
      launch(command);
    }
    else{
      print("fail");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                nextScreen(context, const HomePage());
              },
              icon: const Icon(Icons.arrow_back_ios,))
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Department of CSE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Head of the Department',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 230,
                            width: 200,
                            decoration: BoxDecoration(
                              color: const Color(0xffd9dad9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: 150,
                                    padding: const EdgeInsets.all(2),
                                    width: double.infinity,
                                    child: const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage("assets/Asad.jpeg"),
                                      radius: 40,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Center(
                                          child: Text(
                                            "Mohammad Asaduzzaman Khan",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        const Center(
                                          child: Text(
                                            'Associate Professor',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                padding: const EdgeInsets.only(left: 20),
                                                height: 30,
                                                width: 50,
                                                // decoration: BoxDecoration(
                                                //   border: Border.all(
                                                //     color: Colors.grey,
                                                //   ),
                                                //   borderRadius: BorderRadius.circular(8),
                                                // ),
                                                child: Column(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: (){
                                                        customLauncher("mailto: mak@baiust.edu.bd");
                                                      },
                                                      child: Row(
                                                        children: const [
                                                          Padding(
                                                            padding: EdgeInsets.only(left: 15),
                                                            child: Icon(Icons.mail,
                                                              size: 25,
                                                              color: Colors.green,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            Expanded(
                                              child: Container(
                                                height: 30,
                                                width: 50,
                                                // decoration: BoxDecoration(
                                                //   border: Border.all(
                                                //     color: Colors.grey,
                                                //   ),
                                                //   borderRadius: BorderRadius.circular(8),
                                                // ),
                                                child: Column(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: (){
                                                        customLauncher("tel: 01711003233");
                                                      },
                                                      child: Container(
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 20),
                                                              child: Icon(Icons.call,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Associate professor',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 230,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: const Color(0xffd9dad9),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: 150,
                                        padding: const EdgeInsets.all(2),
                                        width: double.infinity,
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          backgroundImage: AssetImage("assets/Naim.png"),
                                          radius: 40,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Center(
                                              child: Text(
                                                "Golam Moktader Nayeem",
                                                style: TextStyle(
                                                  //fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            const Center(
                                              child: Text(
                                                'Associate Professor',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    padding: const EdgeInsets.only(left: 20),
                                                    height: 30,
                                                    width: 50,
                                                    // decoration: BoxDecoration(
                                                    //   border: Border.all(
                                                    //     color: Colors.grey,
                                                    //   ),
                                                    //   borderRadius: BorderRadius.circular(8),
                                                    // ),
                                                    child: Column(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: (){
                                                            customLauncher("mailto: gmnayeem@baiust.edu.bd");
                                                          },
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 15),
                                                                child: Icon(Icons.mail,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 5,),
                                                Expanded(
                                                  child: Container(
                                                    height: 30,
                                                    width: 50,
                                                    // decoration: BoxDecoration(
                                                    //   border: Border.all(
                                                    //     color: Colors.grey,
                                                    //   ),
                                                    //   borderRadius: BorderRadius.circular(8),
                                                    // ),
                                                    child: Column(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: (){
                                                            customLauncher("tel: 001717293250");
                                                          },
                                                          child: Container(
                                                            child: Row(
                                                              children: const [
                                                                Padding(
                                                                  padding: EdgeInsets.only(left: 20),
                                                                  child: Icon(Icons.call,
                                                                    size: 25,
                                                                    color: Colors.green,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Assistant professor',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Mamun.jpg"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Mamun Ahmed",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Assistant Professor',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: mamun@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01790356681");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Mukti.jpg"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Mousumi Hasan Mukti",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Assistant Professor',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: mousumi.h@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01307843461");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Nargis.jpg"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Dr. Nargis Parvin",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Assistant Professor',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: nargis@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01312281428");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Arif.jpg"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Arif Ahmad",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Assistant Professor',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: arif.cse@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01715274319");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Lecturer',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Rebayet.jpg"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Md. Robaitul Islam Bhuiyan",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Lecturer',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: robayet@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01726547202");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Shimu.jpg"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Simu Sultana",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Lecturer',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: shimu@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01313607339");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Musfiq.jpg"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Musfiqur Rahman Milton",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Lecturer & Program Coordinator',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: musfiqur@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01517055154");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Renu.png"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Saha Reno",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Lecturer & Program Coordinator',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: saha.reno@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01706364326");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Suha.png"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Sayma Alam Suha",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Lecturer',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: sa_suha@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01304037828");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9dad9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage("assets/Hasan.jpg"),
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: Text(
                                              "Hasan Abdullah",
                                              style: TextStyle(
                                                //fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              'Lecturer',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("mailto: hasanabdullah@baiust.edu.bd");
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 15),
                                                              child: Icon(Icons.mail,
                                                                size: 25,
                                                                color: Colors.green,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              Expanded(
                                                child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.grey,
                                                  //   ),
                                                  //   borderRadius: BorderRadius.circular(8),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          customLauncher("tel: 01681523656");
                                                        },
                                                        child: Container(
                                                          child: Row(
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 20),
                                                                child: Icon(Icons.call,
                                                                  size: 25,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
