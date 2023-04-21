import 'package:flutter/material.dart';

import '../../HomeTab/drawerScreen/drawerscreen.dart';

class foodshedule extends StatefulWidget {
  const foodshedule({Key? key}) : super(key: key);

  @override
  State<foodshedule> createState() => _foodsheduleState();
}

class _foodsheduleState extends State<foodshedule> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        physics: const ScrollPhysics(),
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(color: const Color(0xffffffff), boxShadow: [
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
                            padding: const EdgeInsets.only(left: 8, top: 20),
                            child: Container(
                              child: const ImageIcon(
                                AssetImage(
                                  "assets/accicons/drawericon.png",
                                ),
                                size: 37,
                              ),
                            ),
                          ));
                    }),
                    const ImageIcon(
                      AssetImage("assets/images/logo.png"),
                      color: Colors.red,
                      size: 70,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 3,
                      ),
                      child: Container(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_left,
                              size: 37,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        child: const Text(
                          "Set Food Schedule",
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
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text("Set Desired Time",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff40484E),
                      fontWeight: FontWeight.w600)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
            child: Container(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Color(0xffEDEFF3), shape: BoxShape.circle),
                          child: const Text(
                            "S",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: 135,
                          height: 40,
                          child: TextFormField(
                            // maxLines: null,
                            // expands: true,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 17),
                            decoration: InputDecoration(
                                fillColor: const Color(0xffEDEFF3),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 10),
                        child: Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Color(0xffEDEFF3), shape: BoxShape.circle),
                          child: const Text(
                            "M",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: 135,
                          height: 40,
                          child: TextFormField(
                            // maxLines: null,
                            // expands: true,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 17),
                            decoration: InputDecoration(
                                fillColor: const Color(0xffEDEFF3),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 10),
                        child: Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Color(0xffEDEFF3), shape: BoxShape.circle),
                          child: const Text(
                            "T",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: 135,
                          height: 40,
                          child: TextFormField(
                            // maxLines: null,
                            // expands: true,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 17),
                            decoration: InputDecoration(
                                fillColor: const Color(0xffEDEFF3),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 10),
                        child: Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Color(0xffEDEFF3), shape: BoxShape.circle),
                          child: const Text(
                            "W",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: 135,
                          height: 40,
                          child: TextFormField(
                            // maxLines: null,
                            // expands: true,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 17),
                            decoration: InputDecoration(
                                fillColor: const Color(0xffEDEFF3),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color(0xffEDEFF3), shape: BoxShape.circle),
                        child: const Text(
                          "T",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 135,
                        height: 40,
                        child: TextFormField(
                          // maxLines: null,
                          // expands: true,
                          style: const TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              fillColor: const Color(0xffEDEFF3),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 10),
                      child: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color(0xffEDEFF3), shape: BoxShape.circle),
                        child: const Text(
                          "F",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 135,
                        height: 40,
                        child: TextFormField(
                          // maxLines: null,
                          // expands: true,
                          style: const TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              fillColor: const Color(0xffEDEFF3),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 10),
                      child: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color(0xffEDEFF3), shape: BoxShape.circle),
                        child: const Text(
                          "S",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 135,
                        height: 40,
                        child: TextFormField(
                          // maxLines: null,
                          // expands: true,
                          style: const TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              fillColor: const Color(0xffEDEFF3),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 30),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: (() {
                          showDialog(
                              context: context,
                              builder: ((context) => const newmethod()));
                        }),
                        child: const Text(
                          "Pay for 1 week",
                          style: TextStyle(fontSize: 19),
                        )),
                  ),
                  Container(
                    height: 60,
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: (() {
                          showDialog(
                              context: context,
                              builder: ((context) => const newmethod()));
                        }),
                        child: const Text(
                          "Pay for 1 month",
                          style: TextStyle(fontSize: 19),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      drawer: const mydrawer(),
    ));
  }
}

class newmethod extends StatefulWidget {
  const newmethod({Key? key}) : super(key: key);

  @override
  State<newmethod> createState() => _newmethodState();
}

class _newmethodState extends State<newmethod> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 250,
            child: Column(
              children: [
                const SizedBox(
                  height: 38,
                ),
                const Text(
                  "Thank you for\nyour order",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "You can track\nthe pickup address\nlater in Orders History",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.5),
                ),
              ],
            ),
          ),
          Positioned(
            top: -30,
            left: 0,
            right: 0,
            child: Container(
                width: 60,
                height: 60,
                decoration:
                    const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 45,
                  shadows: [
                    Shadow(color: Colors.white, offset: Offset(0, 2.7))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
