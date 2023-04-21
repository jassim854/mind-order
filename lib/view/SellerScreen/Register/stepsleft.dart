import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customRoundContainer.dart';
import 'package:my_order/utilis/components/customwidgets/customTextField.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/utilis/services/CamGalleryAccess/galleryaccess.dart';

import '../../../utilis/components/customwidgets/customElevatedButton.dart';
import '../HomeTab/SortCatagory.dart';

class stepsleft extends StatefulWidget {
  const stepsleft({Key? key}) : super(key: key);

  @override
  State<stepsleft> createState() => _stepsleftState();
}

class _stepsleftState extends State<stepsleft> {
  List days = [false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
      body: Column(
        children: [
          const Flexible(
            flex: 3,
            child: customlogo(
              textcolor: AppColor.headertextcolor,
              splashscreen: false,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: FittedBox(
                  child: customText(
                text: "Just 2 Steps left",
                textColor: AppColor.splashbackgroundcolor,
                size: 30,
                weight: FontWeight.w600,
              )),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 40, bottom: 20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return CamGall(context, classname: const stepsleft());
                        })).whenComplete(() {
                      print("clicked");
                      setState(() {});
                    });
                  });
                },
                child: SizedBox(
                    height: 140,
                    child: DottedBorder(
                        color: AppColor.splashbackgroundcolor.withOpacity(0.3),
                        strokeWidth: 4,
                        dashPattern: [8, 15],
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
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            images.uploadarrowImageIcon))),
                              ))),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: FittedBox(
                child: customText(
                  text: "Upload Shop;s Banner",
                  size: 19,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Flexible(
                      child: Container(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: customText(
                              text: "Opening Time",
                              size: 23,
                              weight: FontWeight.w500,
                            ),
                          )),
                    ),
                    Flexible(
                      flex: 4,
                      child: SizedBox(
                        height: 75,
                        width: 170,
                        child: const customTextfield(
                          hintstyle:
                              TextStyle(color: AppColor.lightgreyTextcolor),
                          contentPading: EdgeInsets.only(top: 55),
                          obsecuretext: false,
                          hintext: "OPEN",
                          textalign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Flexible(
                      child: Container(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: customText(
                              text: " Closing Time",
                              size: 23,
                              weight: FontWeight.w500,
                            ),
                          )),
                    ),
                    Flexible(
                      flex: 4,
                      child: SizedBox(
                        height: 75,
                        width: 170,
                        child: const customTextfield(
                          hintstyle:
                              TextStyle(color: AppColor.lightgreyTextcolor),
                          contentPading: EdgeInsets.only(top: 55),
                          obsecuretext: false,
                          hintext: "CLOSE",
                          textalign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: FittedBox(
            child: customText(
              text: "Days Open",
              size: 22,
              weight: FontWeight.w500,
            ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      days[0] = !days[0];
                    });
                  },
                  child: customRoundButtonContainer(
                      text: 'S',
                      color: days[0] == false
                          ? AppColor.textfieldcolorgrey
                          : AppColor.colorred),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      days[1] = !days[1];
                    });
                  },
                  child: customRoundButtonContainer(
                      text: 'M',
                      color: days[1] == false
                          ? AppColor.textfieldcolorgrey
                          : AppColor.colorred),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      days[2] = !days[2];
                    });
                  },
                  child: customRoundButtonContainer(
                      text: 'T',
                      color: days[2] == false
                          ? AppColor.textfieldcolorgrey
                          : AppColor.colorred),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      days[3] = !days[3];
                    });
                  },
                  child: customRoundButtonContainer(
                      text: 'W',
                      color: days[3] == false
                          ? AppColor.textfieldcolorgrey
                          : AppColor.colorred),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      days[4] = !days[4];
                    });
                  },
                  child: customRoundButtonContainer(
                      text: 'T',
                      color: days[4] == false
                          ? AppColor.textfieldcolorgrey
                          : AppColor.colorred),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      days[5] = !days[5];
                    });
                  },
                  child: customRoundButtonContainer(
                      text: 'F',
                      color: days[5] == false
                          ? AppColor.textfieldcolorgrey
                          : AppColor.colorred),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      days[6] = !days[6];
                    });
                  },
                  child: customRoundButtonContainer(
                      text: 'S',
                      color: days[6] == false
                          ? AppColor.textfieldcolorgrey
                          : AppColor.colorred),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 75, right: 75),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 57,
                      child: customelevatedbutton(
                        onpress: () {
                          Navigator.pushNamed(context, RoutesName.sortcategory);
                        },
                        child: FittedBox(
                          child: customText(
                            text: "Continue",
                            size: 21,
                            weight: FontWeight.w700,
                          ),
                        ),
                        color: AppColor.splashbackgroundcolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
