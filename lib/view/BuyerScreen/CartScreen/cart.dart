import 'package:flutter/material.dart';

import '../SideMenu/orderhistory/bottombar.dart';
import '../dialogbox/dialogbox.dart';

int pressed = 0;

class cartscreen extends StatefulWidget {
  const cartscreen({Key? key}) : super(key: key);
  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  int value = 0;
  double valuee = 0;
  bool switched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffffffff),
            body: ListView(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 37,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
                  Container(
                    child: Text(
                      "Cart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                  ),
                  Container(
                    child: ImageIcon(
                      AssetImage("assets/images/logo.png"),
                      color: Colors.red,
                      size: 70,
                    ),
                  ),
                ],
              ),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Center(
                    child: Container(
                      width: 355,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Color(0xffF3F5F8),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 85,
                        width: 81,
                        decoration: BoxDecoration(
                            // color: Colors.yellow,
                            borderRadius: BorderRadius.circular(15)),
                        child: ImageIcon(AssetImage("assets/images/glogo.png")),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 85,
                        width: 120,
                        // color: Colors.white,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Classic Pizza",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Pizzas",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\$0.71",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 85,
                        width: 110,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 58),
                              child: Container(
                                height: 40,
                                width: 50,
                                // color: Colors.yellow,
                                child: ImageIcon(
                                    AssetImage("assets/accicons/trash.png")),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              // color: Colors.blue,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 30,
                                    // color: Colors.green,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                value--;
                                              });
                                            },
                                            child: Text(
                                              "_",
                                              style: TextStyle(fontSize: 25),
                                            ))),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      // color: Colors.pink,
                                      width: 20,
                                      child: Center(
                                        child: Text(
                                          "$value",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    // color: Colors.white,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                value++;
                                              });
                                            },
                                            child: Text(
                                              "+",
                                              style: TextStyle(fontSize: 25),
                                            ))),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 25, top: 125),
                    child: Container(
                        width: 335,
                        height: 130,
                        // color: Colors.white,
                        child: Stack(children: [
                          Container(
                            width: 410,
                            height: 45,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    // color: Colors.white,
                                    child: const Image(
                                      image: AssetImage(
                                        "assets/images/redchillie.png",
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  // color: Colors.orange,
                                  child: const Center(
                                      child: Text(
                                    "Spice",
                                    style: TextStyle(fontSize: 18),
                                  )),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17),
                                      child: Container(
                                        width: 80,
                                        height: 55,
                                        // color: Colors.white,
                                        child: const Center(
                                            child: const Text(
                                          "Regular",
                                          style: TextStyle(
                                              fontSize: 19, color: Colors.grey),
                                        )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 87),
                                      child: Container(
                                        width: 150,
                                        // color: Colors.red,
                                        child: SliderTheme(
                                          data: SliderThemeData(
                                              // overlayColor: Colors.yellow,
                                              trackHeight: 19,
                                              thumbShape: RoundSliderThumbShape(
                                                  enabledThumbRadius: 14)),
                                          child: Slider(
                                            value: valuee,
                                            onChanged: (value) {
                                              setState(() {
                                                valuee = value;
                                              });
                                            },
                                            thumbColor: Colors.red,
                                            activeColor: Color.fromARGB(
                                                255, 255, 130, 34),
                                            inactiveColor: Color.fromARGB(
                                                255, 224, 26, 26),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 220),
                                      // ignore: avoid_unnecessary_containers
                                      child: Container(
                                        // color: Colors.red,
                                        child: const Center(
                                            child: Text(
                                          "Hot",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Container(
                              width: 411,
                              height: 40,
                              // color: Colors.green,
                              child: Stack(
                                children: [
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        // color: Colors.grey,
                                        child: const Image(
                                          image: AssetImage(
                                              "assets/images/size.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        // color: Colors.white,
                                        child: const Center(
                                          child: Text(
                                            "Size",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 70,
                                        height: 50,
                                        // color: Colors.orange,
                                        child: const Center(
                                          child: Text(
                                            "Medium",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                            // color: Colors.white,
                                            child: PopupMenuButton(
                                                icon: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 0),
                                                  child: Container(
                                                    width: 40,
                                                    child: Icon(
                                                      Icons.keyboard_arrow_down,
                                                      color: Colors.red,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                                itemBuilder: (context) => [
                                                      PopupMenuItem(
                                                        child: Text("Small"),
                                                        value: 1,
                                                        onTap: () {
                                                          print("value");
                                                        },
                                                      ),
                                                      PopupMenuItem(
                                                        child: Text("Medium"),
                                                        value: 2,
                                                      ),
                                                      PopupMenuItem(
                                                        child: Text("Large"),
                                                        value: 3,
                                                      ),
                                                    ])),
                                      ],
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      height: 42,
                                      width: 350,
                                      // color: Colors.red,
                                      child: Row(children: [
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Icon(Icons.heart_broken_sharp),
                                        // SizedBox(
                                        //   width: 5,
                                        // ),
                                        const Text(
                                          "More Cheese",
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 110,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.red,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12))),
                                              onPressed: () {
                                                print("yess");
                                                showDialog(
                                                    useSafeArea: false,
                                                    context: context,
                                                    builder: (context) =>
                                                        ListView(children: [
                                                          SimpleDialog(
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                                                              titlePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                              title: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        bottom:
                                                                            0,
                                                                        left:
                                                                            29,
                                                                        right:
                                                                            29),
                                                                child: Divider(
                                                                  color: Colors
                                                                      .red,
                                                                  thickness: 12,
                                                                ),
                                                              ),
                                                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                              children: [
                                                                dialogbox()
                                                              ])
                                                        ]));
                                              },
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Stack(children: [
                                                  Center(
                                                    child: Text(
                                                      "Addons",
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 67,
                                                              bottom: 19),
                                                      child: Text(
                                                        "+",
                                                        style: TextStyle(
                                                            fontSize: 22),
                                                      ))
                                                ]),
                                              )),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Transform.scale(
                                          scale: 0.8,
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 57,
                                            height: 37,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 5),
                                                // color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Switch(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                trackColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                inactiveThumbColor: Colors.grey,
                                                activeColor: Colors.grey,
                                                value: switched,
                                                onChanged: (value) {
                                                  setState(() {
                                                    switched = value;
                                                  });
                                                }),
                                          ),
                                        )
                                      ]))))
                        ])))
              ]),
              SizedBox(
                height: 30,
              ),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Center(
                    child: Container(
                      width: 355,
                      height: 112,
                      decoration: BoxDecoration(
                          color: Color(0xffF3F5F8),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 85,
                        width: 81,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: ImageIcon(AssetImage("assets/images/glogo.png")),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 85,
                        width: 120,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Lemon Tea",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Beverages",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\$ 2.58",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 85,
                        width: 110,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 58),
                              child: Container(
                                height: 40,
                                width: 50,
                                child: ImageIcon(
                                    AssetImage("assets/accicons/trash.png")),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 30,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                value--;
                                              });
                                            },
                                            child: Text(
                                              "_",
                                              style: TextStyle(fontSize: 25),
                                            ))),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 20,
                                      child: Center(
                                        child: Text(
                                          "$value",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                value++;
                                              });
                                            },
                                            child: Text(
                                              "+",
                                              style: TextStyle(fontSize: 25),
                                            ))),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 10),
                child: Text(
                  "Special Instruction",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Center(
                child: Container(
                  height: 112,
                  width: 355,
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.5)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.5))),
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        width: 85,
                        height: 56,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Sub Total",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Tax",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Container(
                        width: 85,
                        height: 61,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "\$ 60",
                                  style: TextStyle(fontSize: 17),
                                )),
                            SizedBox(
                              height: 7,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "\$ 33.00",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  width: 335,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.2,
                    height: 1,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          child: Text(
                            "Total",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Container(
                          child: Text(
                            "\$ 33.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Center(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 190,
                      height: 40,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Payments Method",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      width: 310,
                      height: 80,
                      // color: Colors.yellow,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 14),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 248, 245, 245),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 27,
                                        height: 27,
                                        child: Center(
                                          child: ImageIcon(
                                            AssetImage(
                                              "assets/accicons/money (1).png",
                                            ),
                                            color: Colors.greenAccent,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 50,
                                        child: Center(
                                          child: Text(
                                            "Cash",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 115, top: 14),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 248, 245, 245),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 27,
                                        height: 27,
                                        child: Center(
                                          child: ImageIcon(
                                            AssetImage(
                                              "assets/accicons/creditcard.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 50,
                                        child: Center(
                                          child: Text(
                                            "Credit",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 215, top: 14),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 248, 245, 245),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 27,
                                        height: 27,
                                        child: Center(
                                          child: ImageIcon(
                                            AssetImage(
                                              "assets/accicons/paypal.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 50,
                                        child: Center(
                                          child: Text(
                                            "Pay Pal",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70, bottom: 0),
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 165, bottom: 0),
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 265, bottom: 0),
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0, top: 5),
                      child: Container(
                        width: 330,
                        height: 55,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(30)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: ((context) => simpledialog()));
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 90,
                                height: 50,
                                // color: Colors.yellow,
                                child: Row(
                                  children: [
                                    Text("Order",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ImageIcon(
                                        AssetImage("assets/accicons/stick.png"))
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ),
                  )
                ],
              ))
            ])));
  }
}

class simpledialog extends StatefulWidget {
  const simpledialog({Key? key}) : super(key: key);

  @override
  State<simpledialog> createState() => _newmethodState();
}

class _newmethodState extends State<simpledialog> {
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
                SizedBox(
                  height: 35,
                ),
                Text(
                  pressed == 0
                      ? "Thank you for\nyour order"
                      : "Yor food is\nready for pick up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Order no 3333",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You can also track\nthe pickup address\nlater in Orders History",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 67, 65, 65),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9))),
                      onPressed: () {
                        if (pressed == 0) {
                          setState(() {
                            pressed = 1;
                          });
                        } else if (pressed == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bottomorderbar(),
                              ));
                          pressed = 0;
                        }
                      },
                      child: Text(
                        "Track",
                        style: TextStyle(fontSize: 16),
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 220,
            child: Container(
              width: 60,
              height: 60,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: pressed == 0
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 45,
                      shadows: [
                        Shadow(color: Colors.white, offset: Offset(0, 2.7))
                      ],
                    )
                  : ImageIcon(
                      AssetImage("assets/accicons/smile.png"),
                      color: Colors.white,
                      size: 45,
                    ),
            ),
          )
        ],
      ),
    );
  }
}
