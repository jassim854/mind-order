import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'addcategory.dart';
import 'addproduct.dart';
import 'expandedJapenesefood.dart';

class japenesesellerfood extends StatefulWidget {
  const japenesesellerfood({Key? key}) : super(key: key);

  @override
  State<japenesesellerfood> createState() => _japenesesellerfoodState();
}

class _japenesesellerfoodState extends State<japenesesellerfood> {
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
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Kim's",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
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
                header(
                  first: "Hot deals",
                  last: "See all",
                ),
                listviewbuilder(),
                header(
                  first: "Starters",
                  last: "See all",
                ),
                listviewbuilder(),
                header(
                  first: "Mains",
                  last: "See all",
                ),
                listviewbuilder(),
                header(
                  first: "Deserts",
                  last: "See all",
                ),
                listviewbuilder(),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Transform.translate(
                      offset: Offset(32, 0),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(5))),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => addcategory(),
                                ));
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 80,
                        alignment: Alignment.center,
                        child: Text(
                          "Category",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                    Container(
                      height: 60,
                      width: 60,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            right: 0,
                            top: 4,
                            child: Container(
                              height: 30,
                              width: 50,
                              alignment: Alignment.bottomCenter,
                              child: Transform.scale(
                                scale: 3.2,
                                child: Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 3,
                            child: Container(
                              height: 30,
                              width: 50,
                              alignment: Alignment.topCenter,
                              child: Transform.scale(
                                scale: 3.2,
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-30, 0),
                      child: Container(
                          height: 40,
                          width: 80,
                          alignment: Alignment.center,
                          child: Text(
                            "Category",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            )));
  }

  listviewbuilder() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 400,
        height: 90,
        child: ListView.builder(
          physics: ScrollPhysics(),
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => addproduct()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.orange, width: 4.2)),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    width: 90,
                    child: Flex(
                      direction: Axis.vertical,
                      children: [
                        Container(
                          height: 65,
                          width: 70,
                          color: Colors.grey,
                        ),
                        Container(
                          height: 25,
                          width: 70,
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            " 21 ",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    )),
              );
            }
          },
        ),
      ),
    );
  }

  header({
    required first,
    required last,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  first,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => expandedFood(),
                        ));
                  },
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.end,
                    spacing: 20.0,
                    children: [
                      Container(
                        width: 50,
                        child: Text(
                          last,
                          style: TextStyle(color: Colors.red, fontSize: 17),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  )),
            )
          ]),
    );
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
