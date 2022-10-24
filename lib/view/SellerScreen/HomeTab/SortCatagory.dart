import 'package:flutter/material.dart';

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
      backgroundColor: Color(0xffFFFFFF),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      padding: const EdgeInsets.only(left: 45),
                      child: Container(
                        child: Text(
                          "Sort Category",
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
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                height: 45,
                width: 45,
                child: ImageIcon(
                  AssetImage("assets/accicons/leadicon.png"),
                  color: Colors.black,
                ),
              ),
            ),
            title: Container(
                height: 30,
                width: 60,
                child: Text(
                  "Hot Deals",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/accicons/trash1.png",
                        ),
                        fit: BoxFit.fill),
                  )),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                height: 45,
                width: 45,
                child: ImageIcon(
                  AssetImage("assets/accicons/leadicon.png"),
                  color: Colors.black,
                ),
              ),
            ),
            title: Container(
                height: 30,
                width: 60,
                child: Text(
                  "Starters",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/accicons/trash1.png",
                        ),
                        fit: BoxFit.fill),
                  )),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                height: 45,
                width: 45,
                child: ImageIcon(
                  AssetImage("assets/accicons/leadicon.png"),
                  color: Colors.black,
                ),
              ),
            ),
            title: Container(
                height: 30,
                width: 60,
                child: Text(
                  "Mains",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/accicons/trash1.png",
                        ),
                        fit: BoxFit.fill),
                  )),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                height: 45,
                width: 45,
                child: ImageIcon(
                  AssetImage("assets/accicons/leadicon.png"),
                  color: Colors.black,
                ),
              ),
            ),
            title: Container(
                height: 30,
                width: 60,
                child: Text(
                  "Dessort",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/accicons/trash1.png",
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
