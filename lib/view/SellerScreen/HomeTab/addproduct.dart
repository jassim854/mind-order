import 'package:flutter/material.dart';

import '../../../utilis/services/CamGalleryAccess/galleryaccess.dart';
import 'JapeneseFood.dart';

class addproduct extends StatefulWidget {
  @override
  State<addproduct> createState() => _addproductState();
}

class _addproductState extends State<addproduct> {
  var check = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
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
                            image: AssetImage(
                                "assets/accicons/sellerlogo.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Transform.scale(
                        scale: 1.8,
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const japenesesellerfood(),
                                  ));
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_left,
                            )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          child: const FittedBox(
                            child: Text(
                              "Add Product",
                              style: TextStyle(
                                  fontSize: 34,
                                  color: Color(0xff40484E),
                                  fontWeight: FontWeight.w600),
                            ),
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
                              showDialog(
                                  context: context,
                                  builder: ((context) {
                                    return CamGall(
                                      context,
                                      classname: addproduct(),
                                    );
                                  }));
                            },
                            child: Center(
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                                child: const Icon(
                                  Icons.add_sharp,
                                  color: Colors.white,
                                  size: 45,
                                  shadows: [
                                    Shadow(
                                        color: Colors.white,
                                        offset: Offset(0, 2))
                                  ],
                                ),
                              ),
                            ),
                          )))
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
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/accicons/product.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Flexible(
                          child: Container(
                        height: 50,
                        width: 320,
                        child: const TextField(
                          textAlign: TextAlign.center,
                          cursorHeight: 10,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Product Name",
                            hintStyle: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 50,
                          width: 330,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        check = 1;
                                      });
                                    },
                                    child: Transform.scale(
                                      scale: 1.1,
                                      child: check == 1
                                          ? const Icon(
                                              Icons.check_circle,
                                              color: Colors.red,
                                            )
                                          : const Icon(
                                              Icons.radio_button_unchecked,
                                              color: Colors.red,
                                            ),
                                    )),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  height: 26,
                                  child: const FittedBox(
                                      alignment: Alignment.center,
                                      child: Text("Available",
                                          style: TextStyle(fontSize: 32))),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      check = 2;
                                    });
                                  },
                                  child: Transform.scale(
                                    scale: 1.1,
                                    child: check == 2
                                        ? const Icon(
                                            Icons.check_circle,
                                            color: Colors.red,
                                          )
                                        : const Icon(
                                            Icons.radio_button_unchecked,
                                            color: Colors.red,
                                          ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  // color: Colors.red,
                                  height: 33,
                                  child: const FittedBox(
                                      alignment: Alignment.center,
                                      child: Text("Unavailable",
                                          style: TextStyle(fontSize: 32))),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Flexible(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/accicons/descicon.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Flexible(
                          child: Container(
                        height: 50,
                        width: 320,
                        child: const TextField(
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
                        child: const TextField(
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
                        child: const TextField(
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
                        child: const TextField(
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
