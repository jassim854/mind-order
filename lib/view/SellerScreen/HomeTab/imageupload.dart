import 'package:flutter/material.dart';
import 'package:my_order/Helper/basehelper.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/drawerScreen/drawerscreen.dart';

import 'addcategory.dart';

class imageupload extends StatefulWidget {
  const imageupload({Key? key}) : super(key: key);

  @override
  State<imageupload> createState() => _imageuploadState();
}

class _imageuploadState extends State<imageupload> {
  var imageFile;
  var imgcon = 0;
  @override
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
                              Navigator.of(context).pop(imageFile);
                              print(imageFile);
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
                          child: const Text(
                            "Image Upload",
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
          Row(children: [
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
                          ),
                        ),
                      )
                    : Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 30, right: 30),
                        height: 190,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(
                                width: 4, color: AppColor.colorDarkYellow)),
                        child: InkWell(
                            onTap: () async {
                              imageFile =
                                  await BaseHelper.imagePickerSheet(context);
                              setState(() {});
                            },
                            child: customText(
                              text: 'Upload',
                              size: 19,
                              weight: FontWeight.bold,
                              textColor: AppColor.colorred,
                            )),
                      ),
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Transform.translate(
            offset: const Offset(0, -5),
            child: Center(
              child: SizedBox(
                height: 20,
                width: 130,
                child: const Text(
                  "Pinch to Zoom",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: const FittedBox(
              child: Text(
                "Photo Upload Guidelines",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: const FittedBox(
              fit: BoxFit.fill,
              child: Text(
                "The image can't be blurry, it can't\ninclude text or logo and there\nshould be space around the food.",
                textAlign: TextAlign.justify,
                textScaleFactor: 1.1,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  print("clicked");
                  imageFile = null;
                });
              },
              child: Transform.scale(
                  scale: 2, child: const Icon(Icons.highlight_remove_rounded)),
            ),
          ),
        ],
      ),
    ));
  }
}
