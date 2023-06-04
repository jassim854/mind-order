import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/CustomClassicPizzaWidgets.dart';
import 'package:my_order/utilis/components/customwidgets/customPopupMenuButton.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

var ispressed = false;
var x = ['22'];

class ExpandedFood extends StatefulWidget {
  const ExpandedFood({Key? key}) : super(key: key);

  @override
  State<ExpandedFood> createState() => _ExpandedFoodState();
}

class _ExpandedFoodState extends State<ExpandedFood> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xffffffff),
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
                            padding: const EdgeInsets.only(left: 8, top: 20),
                            child: const ImageIcon(
                              AssetImage(
                                "assets/accicons/drawericon.png",
                              ),
                              size: 37,
                            ),
                          ));
                    }),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: const Color(0xffFC4747),
                            borderRadius: BorderRadius.circular(12)),
                        child: Transform.scale(
                          scale: 0.6,
                          child: const Image(
                            image: AssetImage("assets/accicons/sellerlogo.png"),
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
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      constraints:
                          const BoxConstraints.expand(width: 30, height: 30),
                      child: const FittedBox(
                        child: Text(
                          "Starters",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: 330,
                        height: 700,
                        child: GridView.builder(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            itemCount: 40,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
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
                                                decoration: const BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 220, 211, 211),
                                                    shape: BoxShape.circle),
                                                child: const Icon(
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
                                              const Size.fromRadius(15)),
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            x.toString(),
                                            style:
                                                const TextStyle(fontSize: 18),
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
                  child: const Icon(
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
