import 'package:flutter/material.dart';

import '../../dialogbox/dialogbox.dart';
import '../Homescreen/homeScreen.dart';
import 'bottombar.dart';

String size = 'medium';

class classicpizza extends StatefulWidget {
  classicpizza({Key? key}) : super(key: key);

  @override
  State<classicpizza> createState() => _classicpizzaState();
}

class _classicpizzaState extends State<classicpizza> {
  bool switched = false;
  double valuee = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: ListView(
          children: [
            Stack(children: [
              Container(
                  height: 295,
                  width: 400,
                  color: Color(0xffE8E8E8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 30,
                          width: 30,
                          // color: Colors.green,
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
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 270,
                          width: 280,
                          // color: Colors.blue,
                          decoration: const BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(220)),
                              image: const DecorationImage(
                                image: const AssetImage(
                                  "assets/images/pizza.png",
                                ),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          // color: Colors.green,
                          child: const ImageIcon(
                            AssetImage("assets/images/logo.png"),
                            color: Colors.red,
                            size: 62,
                          ),
                        ),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Column(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Container(
                                height: 40,
                                width: 100,
                                // color: Colors.green,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffFC4747),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 10,
                                  height: 10,
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 10, left: 20),
                                    child: Text(
                                      "Pizzas",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  // color: Colors.blue,
                                  child: const Text(
                                    "Classic\nPizza",
                                    style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 80,
                                // color: Colors.red,
                                child: Column(
                                  children: [
                                    Container(
                                        width: 100,
                                        height: 40,
                                        // color: Colors.yellow,
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: const Text(
                                                "£",
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            const Text(
                                              "2.57",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )),
                                    Container(
                                      width: 100,
                                      height: 40,
                                      // color: Colors.blue,
                                      child: const Padding(
                                          padding: EdgeInsets.only(left: 45),
                                          child: ImageIcon(const AssetImage(
                                              'assets/images/imgicon.png'))),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: 400,
                              height: 50,
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      // color: Colors.blue,
                                      width: 100,
                                      height: 48,
                                      child: Row(children: [
                                        const Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text("★",
                                              style: TextStyle(
                                                  fontSize: 32,
                                                  color: Colors.yellow),
                                              textAlign: TextAlign.justify),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "4.8",
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      width: 100,
                                      height: 48,
                                      // color: const Color.fromARGB(255, 212, 33, 243),
                                      child: Row(
                                        children: [
                                          const ImageIcon(const AssetImage(
                                              "assets/images/fooddish.png")),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          const Text("Serves 2")
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 42),
                                    child: Container(
                                      width: 100,
                                      height: 48,
                                      // color: const Color.fromARGB(255, 33, 243, 201),
                                      child: Row(
                                        children: [
                                          const ImageIcon(const AssetImage(
                                              "assets/images/clock.png")),
                                          const Text("15-20 mins")
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 17,
                          right: 17,
                        ),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2.0,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: 380,
                              height: 80,
                              // color: Colors.pink,
                              child: const Text(
                                "Classic Pizza is rich and full of flavour,Top it with\ngarlic mayo sauce,and enjoy your perfect meal.\nAllergen Advice:contains gluten & nuts",
                                style: TextStyle(fontSize: 17.5),
                              ),
                            ),
                          ),
                          Container(
                            width: 400,
                            height: 110,
                            // color: Colors.yellow,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 400,
                                  height: 60,
                                  // color: Colors.blue,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          width: 30,
                                          height: 30,
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
                                        width: 60,
                                        height: 60,
                                        // color: Colors.orange,
                                        child: const Center(
                                            child: Text(
                                          "Spice",
                                          style: TextStyle(fontSize: 20),
                                        )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Container(
                                          width: 80,
                                          height: 55,
                                          // color: Colors.white,
                                          child: const Center(
                                              child: const Text(
                                            "Regular",
                                            style: const TextStyle(
                                                fontSize: 19,
                                                color: Colors.grey),
                                          )),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: 150,
                                          // color: Colors.red,
                                          child: SliderTheme(
                                            data: SliderThemeData(
                                                overlayColor: Colors.yellow,
                                                trackHeight: 19,
                                                thumbShape:
                                                    RoundSliderThumbShape(
                                                        enabledThumbRadius:
                                                            14)),
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
                                        padding: const EdgeInsets.only(left: 3),
                                        child: Container(
                                          // color: Colors.red,
                                          child: const Center(
                                              child: Text(
                                            "Hot",
                                            style: TextStyle(fontSize: 20),
                                          )),
                                        ),
                                      ),
                                      SizedBox(width: 10)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 50,
                                  // color: Colors.green,
                                  child: Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 32,
                                        height: 32,
                                        // color: Colors.grey,
                                        child: const Image(
                                          image: AssetImage(
                                              "assets/images/size.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
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
                                      padding: EdgeInsets.only(left: 50),
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        width: 70,
                                        height: 50,
                                        child: Text(
                                          "$size",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        alignment: Alignment.centerLeft,

                                        // color: Colors.white,
                                        child: popup()),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 400,
                            height: 40,
                            // color: Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 40,
                                    width: 150,
                                    // color: Colors.white,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Icon(Icons.heart_broken_sharp),
                                          // SizedBox(
                                          //   width: 5,
                                          // ),
                                          const Text(
                                            "More Cheese",
                                            style:
                                                const TextStyle(fontSize: 18),
                                          ),
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Container(
                                      width: 60,
                                      height: 40,
                                      // color: Colors.yellow,
                                      child: Transform.scale(
                                        scale: 0.8,
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 57,
                                          height: 37,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff959FA8),
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
                                              thumbColor:
                                                  MaterialStateProperty.all(
                                                      Color(0xff959FA8)),
                                              value: switched,
                                              onChanged: (value) {
                                                setState(() {
                                                  switched = value;
                                                });
                                              }),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 240),
                            child: Container(
                              width: 100,
                              height: 45,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    print("yess");
                                    showDialog(
                                        useSafeArea: false,
                                        context: context,
                                        builder:
                                            (context) => ListView(children: [
                                                  SimpleDialog(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(20))),
                                                      titlePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                      title: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 0,
                                                                left: 29,
                                                                right: 29),
                                                        child: Divider(
                                                          color: Colors.red,
                                                          thickness: 12,
                                                        ),
                                                      ),
                                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                      children: [dialogbox()])
                                                ]));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Add",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 11, bottom: 10),
                                          child: Text(
                                            "+",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      )
                    ]),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 275, left: 160),
                  child: Container(
                    width: 60,
                    height: 60,
                    // color: Colors.blue,
                    child: const Image(
                        image: AssetImage("assets/images/pizzaheart.png"),
                        fit: BoxFit.fill),
                  ))
            ]),
          ],
        ),
        bottomNavigationBar: const bottombarr(),
      ),
    );
  }

  Widget popup() {
    return Transform.scale(
      scale: 1.5,
      child: PopupMenuButton(
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.red,
          ),
          itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("Small"),
                  value: 1,
                  onTap: () {
                    setState(() {
                      size = 'Small';
                    });
                  },
                ),
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      size = 'Medium';
                    });
                  },
                  child: Text("Medium"),
                  value: 2,
                ),
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      size = 'Large';
                    });
                  },
                  child: Text("Large"),
                  value: 3,
                ),
              ]),
    );
  }

// int value = 0;

// Widget addon() {
//   // value = 1;
//   // if (value == 1) {

//   // } else {
//   //   print('no');
//   // }

// }
//  dialog1() {
//   return showDialog(
//       context: context,
//       builder: (context) => SimpleDialog(
//             title: Text('heeeelo'),
//             children: [
//               Text("heelo"),
//             ],
//           ));
// }

}
