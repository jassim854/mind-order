import 'package:flutter/material.dart';

import '../../../utilis/services/CamGalleryAccess/galleryaccess.dart';
import 'JapeneseFood.dart';
import 'imageupload.dart';
import 'menuicon.dart';

late BuildContext dcontext;

class addcategory extends StatefulWidget {
  const addcategory({Key? key}) : super(key: key);

  @override
  State<addcategory> createState() => _addcategoryState();
}

class _addcategoryState extends State<addcategory> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
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
                        child: Transform.scale(
                          scale: 1.8,
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          japenesesellerfood(),
                                    ));
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_left,
                              )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 240,
                          child: Text(
                            "Add Category",
                            style: TextStyle(
                                fontSize: 34,
                                color: Color(0xff40484E),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Center(
                          child: imageFile != null
                              ? Container(
                                  width: 320,
                                  height: 190,
                                  color: Colors.grey,
                                  child: InteractiveViewer(
                                      child: Image.file(
                                    imageFile,
                                    fit: BoxFit.fill,
                                  )))
                              : Container(
                                  width: 320,
                                  height: 190,
                                  color: Colors.grey,
                                ))),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: InkWell(
                      onTap: () {
                        print("yess");
                        setState(() {
                          showDialog(
                              context: context,
                              builder: ((context) {
                                dcontext = context;
                                return CamGall(context,
                                    classname: imageupload());
                              })).whenComplete(() {
                            print("clicked");
                            setState(() {});
                          });
                        });
                      },
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Icon(
                            Icons.add_sharp,
                            color: Colors.white,
                            size: 45,
                            shadows: [
                              Shadow(color: Colors.white, offset: Offset(0, 2))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  height: 400,
                  width: 350,
                  child: Column(
                    children: [
                      Flexible(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/accicons/bookicon.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Flexible(
                          child: Container(
                        height: 50,
                        width: 320,
                        child: TextField(
                          textAlign: TextAlign.center,
                          cursorHeight: 10,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Submenu Name",
                            hintStyle: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 170,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MenuIcon(),
                                  ));
                            },
                            child: Text(
                              "Set Icon",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Flexible(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/accicons/descicon.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Flexible(
                          child: Container(
                        height: 50,
                        width: 320,
                        child: TextField(
                          textAlign: TextAlign.center,
                          cursorHeight: 10,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Description",
                            hintStyle: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      )),
                      Flexible(
                          child: Container(
                        height: 40,
                        width: 320,
                        child: TextField(
                          textAlign: TextAlign.center,
                          cursorHeight: 10,
                          maxLines: 1,
                          decoration: InputDecoration(),
                        ),
                      )),
                      Flexible(
                          child: Container(
                        height: 40,
                        width: 320,
                        child: TextField(
                          textAlign: TextAlign.center,
                          cursorHeight: 10,
                          maxLines: 1,
                          decoration: InputDecoration(),
                        ),
                      )),
                      Flexible(
                          child: Container(
                        height: 40,
                        width: 320,
                        child: TextField(
                          textAlign: TextAlign.center,
                          cursorHeight: 10,
                          maxLines: 1,
                          decoration: InputDecoration(),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
