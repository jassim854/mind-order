import 'package:flutter/material.dart';

import '../../HomeTab/drawerScreen/drawerscreen.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  List a = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xfff3f5f8),
      drawer: mydrawer(),
      body: ListView(
        physics: ScrollPhysics(),
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(color: Color(0xfff3f5f8), boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(1),
                // spreadRadius: 100,
                // blurRadius: 500
              )
            ]),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(builder: (context) {
                      return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 8, top: 20),
                            child: Container(
                              child: ImageIcon(
                                AssetImage(
                                  "assets/accicons/drawericon.png",
                                ),
                                size: 37,
                              ),
                            ),
                          ));
                    }),
                    ImageIcon(
                      AssetImage("assets/images/logo.png"),
                      color: Colors.red,
                      size: 70,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.keyboard_arrow_left,
                              size: 37,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Container(
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 34,
                              color: Color(0xff40484E),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 40),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "English",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Night Mode",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: Container(
                              alignment: Alignment.center,
                              width: 57,
                              height: 37,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff40484e), width: 5),
                                  // color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Switch(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  trackColor:
                                      MaterialStateProperty.all(Colors.white),
                                  thumbColor: MaterialStateProperty.all(
                                      Color(0xff40484e)),
                                  value: a[0],
                                  onChanged: (value) {
                                    setState(() {
                                      a[0] = value;
                                    });
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.3,
                      height: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Auto Night Mode",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: Container(
                              alignment: Alignment.center,
                              width: 57,
                              height: 37,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff40484e), width: 5),
                                  // color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Switch(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  trackColor:
                                      MaterialStateProperty.all(Colors.white),
                                  thumbColor: MaterialStateProperty.all(
                                      Color(0xff40484e)),
                                  value: a[1],
                                  onChanged: (value) {
                                    setState(() {
                                      a[1] = value;
                                    });
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Push Notifications",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: Container(
                              alignment: Alignment.center,
                              width: 57,
                              height: 37,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff40484e), width: 5),
                                  // color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Switch(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  trackColor:
                                      MaterialStateProperty.all(Colors.white),
                                  thumbColor: MaterialStateProperty.all(
                                      Color(0xff40484e)),
                                  value: a[2],
                                  onChanged: (value) {
                                    setState(() {
                                      a[2] = value;
                                    });
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.6,
                      height: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Email Offers",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: Container(
                              alignment: Alignment.center,
                              width: 57,
                              height: 37,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff40484e), width: 5),
                                  // color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Switch(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  trackColor:
                                      MaterialStateProperty.all(Colors.white),
                                  thumbColor: MaterialStateProperty.all(
                                      Color(0xfffc4747)),
                                  value: a[3],
                                  onChanged: (value) {
                                    setState(() {
                                      a[3] = value;
                                    });
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text(
                              "Report A Blog",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                          ]))),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.3,
                      height: 40,
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text(
                              "Account Settings",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                          ]))),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
