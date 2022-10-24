import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import '../../../view/SellerScreen/Register/usertype.dart';
import '../../constants/Colors/colors.dart';
import '../customwidgets/customtextwidget.dart';

class customlogo extends StatelessWidget {
  final Color? textcolor;

  final bool? splashscreen, backarrow, colorcontainer;

  const customlogo(
      {Key? key,
      required this.textcolor,
      required this.splashscreen,
      this.backarrow,
      this.colorcontainer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: 170,
      child: Stack(
        children: [
          colorcontainer == true
              ? Container(
                  height: 180,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.colorgrey,
                          offset: Offset(0.0, 1.0),
                        )
                      ],
                      color: AppColor.textfieldcolorgrey,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                )
              : Container(),
          Positioned.fill(
            top: 25,
            child: Container(
              child: Column(
                children: [
                  type == 'Buyer'
                      ? Flexible(
                          flex: 2,
                          child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: splashscreen == true
                                      ? DecorationImage(
                                          image: AssetImage(images.mindlogo),
                                          fit: BoxFit.cover)
                                      : DecorationImage(
                                          image: AssetImage(images.logo),
                                          fit: BoxFit.cover))),
                        )
                      : Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: AppColor.splashbackgroundcolor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image(
                                image: AssetImage(images.sellermindlogo),
                              ),
                            ),
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: FittedBox(
                      child: customText(
                        text: "Mind Order",
                        size: 20,
                        weight: FontWeight.w500,
                        textColor: textcolor,
                        maxline: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            alignment:
                backarrow == true ? Alignment.topLeft : Alignment.topRight,
            child: backarrow == true
                ? Transform.scale(
                    scale: 1.4,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.keyboard_arrow_left_outlined)),
                  )
                : Image(
                    image: AssetImage(
                      images.mindlogo1,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class customhomeLogo extends StatelessWidget {
  final backarrow;

  const customhomeLogo({Key? key, this.backarrow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      padding: EdgeInsets.only(
          left: 8, right: 15, top: 5, bottom: backarrow == true ? 0 : 13),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          backarrow == true
              ? Container(
                  child: Transform.scale(
                    scale: 1.4,
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.keyboard_arrow_left_outlined)),
                  ),
                )
              : Builder(builder: (context) {
                  return InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                          child: Transform.scale(
                              scale: 1.6,
                              alignment: Alignment.topLeft,
                              child: customImageIcon(
                                  imageicon: images.drawerIcon))));
                }),
          Container(
            padding: EdgeInsets.only(top: backarrow == true ? 0 : 10),
            child: Transform.scale(
              scale: 2.4,
              child: customImageIcon(
                imageicon: images.logo,
                color: AppColor.splashbackgroundcolor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
