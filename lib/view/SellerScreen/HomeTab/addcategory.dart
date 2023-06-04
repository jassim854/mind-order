import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/drawerScreen/drawerscreen.dart';

import 'japeneseSellerFood.dart';
import 'imageupload.dart';
import 'menuicon.dart';

late BuildContext dcontext;

class AddCategory extends StatefulWidget {
  const AddCategory({Key? key}) : super(key: key);

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  var imageFile;
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
                      child: Transform.scale(
                        scale: 1.8,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
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
                          width: 240,
                          child: const Text(
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
            clipBehavior: Clip.none,
            children: [
              imageFile != null
                  ? Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      width: double.infinity,
                      height: 190,
                      color: Colors.grey,
                      child: InteractiveViewer(
                          child: Image.file(
                        imageFile,
                        fit: BoxFit.fill,
                      )))
                  : Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      height: 190,
                      color: Colors.grey,
                    ),
              Positioned(
                left: 170,
                top: 160,
                child: InkWell(
                  onTap: () async {
                    imageFile = await Navigator.pushNamed(
                        context, RoutesName.imageUploadView );
                    setState(() {});
                  },
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
                        Shadow(color: Colors.white, offset: Offset(0, 2))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Flex(
              direction: Axis.vertical,
              children: [
                SizedBox(
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
                                    "assets/images/accicons/bookicon.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Flexible(
                          child: SizedBox(
                        height: 50,
                        width: 320,
                        child: const TextField(
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
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => const MenuIcon(),
                              //     ));
                            },
                            child: const Text(
                              "Set Icon",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            )),
                      ),
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
                                    "assets/images/accicons/descicon.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 320,
                        child: TextField(
                          textAlign: TextAlign.center,
                          minLines: 1,
                          maxLines: 5,
                          decoration: InputDecoration(
                              hintText: "Description",
                              hintStyle: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              enabledBorder: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder()),
                        ),
                      ),
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
