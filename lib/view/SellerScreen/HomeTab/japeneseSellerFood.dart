import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customPopupMenuButton.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/drawerScreen/drawerscreen.dart';

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
            drawer: mydrawer(),
            backgroundColor: const Color(0xffffffff),
            body: ListView(
              children: [
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Builder(builder: (context) {
                //       return GestureDetector(
                //           onTap: () {
                //             Scaffold.of(context).openDrawer();
                //           },
                //           child: Padding(
                //             padding: const EdgeInsets.only(left: 8, top: 20),
                //             child: const ImageIcon(
                //               AssetImage(
                //                 "assets/images/accicons/drawericon.png",
                //               ),
                //               size: 37,
                //             ),
                //           ));
                //     }),
                //     Padding(
                //       padding: const EdgeInsets.only(right: 20, top: 10),
                //       child: Container(
                //         height: 45,
                //         width: 45,
                //         decoration: BoxDecoration(
                //             color: const Color(0xffFC4747),
                //             borderRadius: BorderRadius.circular(12)),
                //         child: Transform.scale(
                //           scale: 0.6,
                //           child: const Image(
                //             image: AssetImage(
                //                 "assets/imagesaccicons/sellerlogo.png"),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                customhomeLogo(backarrow: false, centerText: false),
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
                        const Padding(
                          padding: EdgeInsets.only(left: 5),
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
                                const TextStyle(
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
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
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
                        suffixIcon: customPopupMenuButton(
                          img: images.popupicon,
                          items: [
                            const PopupMenuItem(
                              child: Text("Price"),
                              value: 0,
                            ),
                            const PopupMenuItem(
                              child: Text("Distance"),
                              value: 1,
                            ),
                            const PopupMenuItem(
                              child: Text("timee"),
                              value: 2,
                            ),
                            const PopupMenuItem(
                              child: Text("Vlog"),
                              value: 3,
                            ),
                            const PopupMenuItem(
                              child: Text("Resturnats"),
                              value: 4,
                            )
                          ],
                        )),
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
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Transform.translate(
                      offset: const Offset(32, 0),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(5))),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, RoutesName.addCategory);
                          },
                          child: const Icon(
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
                        child: const Text(
                          "Category",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.sortcategory);
                      },
                      child: SizedBox(
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
                                  child: const Icon(
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
                                  child: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-30, 0),
                      child: Container(
                          height: 40,
                          width: 80,
                          alignment: Alignment.center,
                          child: const Text(
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
      child: SizedBox(
        width: 400,
        height: 90,
        child: ListView.builder(
          physics: const ScrollPhysics(),
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddProduct()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.orange, width: 4.2)),
                    child: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
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
                          child: const Text(
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
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExpandedFood(),
                        ));
                  },
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.end,
                    spacing: 20.0,
                    children: [
                      SizedBox(
                        width: 50,
                        child: Text(
                          last,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 17),
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.red,
                      ),
                    ],
                  )),
            )
          ]),
    );
  }
}
