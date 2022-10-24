import 'dart:ui';

import 'package:flutter/material.dart';

var ispressed = false;
var x = ['22'];

class expandedFood extends StatefulWidget {
  const expandedFood({Key? key}) : super(key: key);

  @override
  State<expandedFood> createState() => _expandedFoodState();
}

class _expandedFoodState extends State<expandedFood> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffffffff),
            body: ListView(
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
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Color(0xffFC4747),
                            borderRadius: BorderRadius.circular(12)),
                        child: Transform.scale(
                          scale: 0.6,
                          child: Image(
                            image: const AssetImage(
                                "assets/accicons/sellerlogo.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    width: 380,
                    height: 80,
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Kim's",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Japanese Food",
                            style: Theme.of(context).textTheme.headline4?.merge(
                                TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        hintText: "Search",
                        hintStyle: const TextStyle(fontSize: 19),
                        fillColor: const Color.fromARGB(15, 158, 158, 158),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 45,
                          color: Colors.grey,
                        ),
                        suffixIcon: popup(context)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints.expand(width: 30, height: 30),
                      child: FittedBox(
                        child: Text(
                          "Starters",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                        width: 330,
                        height: 700,
                        child: GridView.builder(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            itemCount: 40,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 5,
                                    mainAxisSpacing: 15,
                                    crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      width: 110,
                                      height: 130,
                                      color: Colors.grey,
                                      child: Wrap(
                                          alignment: WrapAlignment.end,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  print("click");
                                                  ispressed = true;
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 220, 211, 211),
                                                    shape: BoxShape.circle),
                                                child: Icon(
                                                  Icons.edit_outlined,
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Flexible(
                                      child: Container(
                                          constraints: BoxConstraints.tight(
                                              Size.fromRadius(15)),
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            x.toString(),
                                            style: TextStyle(fontSize: 18),
                                          )))
                                ],
                              );
                            })),
                  ],
                ),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.white,
              child: Container(
                height: 30,
              ),
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => addproduct()));
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.orange, width: 4.2)),
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }
}

popup(BuildContext context) {
  return PopupMenuButton(
      onSelected: ((value) {
        // if (value == 0) {
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //           builder: (context) => homeScreen()));
        // } else if (value == 1) {
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //           builder: (context) => CuisineScreen()));
        // }
      }),
      icon: ImageIcon(AssetImage("assets/images/icon1.png")),
      itemBuilder: (context) => [
            PopupMenuItem(
              child: Text("Price"),
              value: 0,
            ),
            PopupMenuItem(
              child: Text("Distance"),
              value: 1,
            ),
            PopupMenuItem(
              child: Text("timee"),
              value: 2,
            ),
            PopupMenuItem(
              child: Text("Vlog"),
              value: 3,
            ),
            PopupMenuItem(
              child: Text("Resturnats"),
              value: 4,
            )
          ]);
}
