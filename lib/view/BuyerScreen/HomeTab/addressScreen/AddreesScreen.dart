import 'package:flutter/material.dart';

import '../drawerScreen/drawerscreen.dart';

class kimsAddress extends StatelessWidget {
  const kimsAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        drawer: mydrawer(),
        body: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(builder: (context) {
                  return GestureDetector(
                      onTap: () {
                        print("yess");
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
            Container(
              width: 10,
              height: 80,
              // color: Colors.red,
              child: Column(
                children: [
                  Text("Kim's Japenese Food",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
                  const Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 29,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              // color: Colors.pink,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 240,
                    height: 45,
                    // color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "Business Name",
                            style: const TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: 240,
                      height: 50,
                      // color: Colors.yellow,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 28, bottom: 20),
                        child: Row(
                          children: [
                            const Text(
                              "Kims's Japenese Food",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Container(
              width: 10,
              height: 100,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 240,
                      height: 45,
                      // color: Colors.blue,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30, bottom: 20),
                            child: const Text("Address",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      )),
                  Container(
                      width: 240,
                      height: 50,
                      // color: Colors.yellow,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 28, bottom: 30),
                            child: const Text(
                              "X Y Z",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Container(
              width: 10,
              height: 100,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 240,
                      height: 45,
                      // color: Colors.blue,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30, bottom: 20),
                            child: Text("City",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      )),
                  Container(
                      width: 240,
                      height: 50,
                      // color: Colors.yellow,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 28, bottom: 30),
                            child: Text(
                              "London",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              height: 100,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 240,
                      height: 45,
                      // color: Colors.blue,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 30, bottom: 20),
                            child: const Text("PostCode",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      )),
                  Container(
                      width: 240,
                      height: 50,
                      // color: Colors.yellow,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 28, bottom: 30),
                            child: Text(
                              "78200",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              width: 10,
              height: 100,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 240,
                      height: 45,
                      // color: Colors.blue,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 30, bottom: 20),
                            child: const Text("Business Name",
                                style: const TextStyle(
                                    fontSize: 24,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      )),
                  Container(
                      width: 240,
                      height: 50,
                      // color: Colors.yellow,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 28, bottom: 30),
                            child: Text(
                              "www.asdad.com.uk",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              width: 10,
              height: 150,
              // color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70, left: 10),
                child: Row(
                  children: [
                    Container(
                        width: 200,
                        height: 40,
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "+9204131231",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        )),
                    Container(
                      width: 170,
                      // height: 60,
                      // color: Colors.white,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Call",
                          style: const TextStyle(fontSize: 24),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            minimumSize: const Size(170, 60)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
