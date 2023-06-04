import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/drawerScreen/drawerscreen.dart';

class sortcategory extends StatefulWidget {
  const sortcategory({Key? key}) : super(key: key);

  @override
  State<sortcategory> createState() => _sortcategoryState();
}

class _sortcategoryState extends State<sortcategory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: mydrawer(),
      backgroundColor: const Color(0xffFFFFFF),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: 130,
            child: Column(
              children: [
                customhomeLogo(backarrow: false, centerText: false),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_left,
                            size: 37,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: const Text(
                        "Sort Category",
                        style: TextStyle(
                            fontSize: 34,
                            color: Color(0xff40484E),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                height: 45,
                width: 45,
                child: const ImageIcon(
                  AssetImage("assets/images/accicons/leadicon.png"),
                  color: Colors.black,
                ),
              ),
            ),
            title: SizedBox(
                height: 30,
                width: 60,
                child: const Text(
                  "Hot Deals",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/accicons/trash1.png",
                        ),
                        fit: BoxFit.fill),
                  )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                height: 45,
                width: 45,
                child: const ImageIcon(
                  AssetImage("assets/images/accicons/leadicon.png"),
                  color: Colors.black,
                ),
              ),
            ),
            title: SizedBox(
                height: 30,
                width: 60,
                child: const Text(
                  "Starters",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/accicons/trash1.png",
                        ),
                        fit: BoxFit.fill),
                  )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                height: 45,
                width: 45,
                child: const ImageIcon(
                  AssetImage("assets/images/accicons/leadicon.png"),
                  color: Colors.black,
                ),
              ),
            ),
            title: SizedBox(
                height: 30,
                width: 60,
                child: const Text(
                  "Mains",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/accicons/trash1.png",
                        ),
                        fit: BoxFit.fill),
                  )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                height: 45,
                width: 45,
                child: const ImageIcon(
                  AssetImage("assets/images/accicons/leadicon.png"),
                  color: Colors.black,
                ),
              ),
            ),
            title: SizedBox(
                height: 30,
                width: 60,
                child: const Text(
                  "Dessort",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/accicons/trash1.png",
                        ),
                        fit: BoxFit.fill),
                  )),
            ),
          ),
        ],
      ),
    ));
  }
}
