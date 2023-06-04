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
    return SizedBox(
      height: MediaQuery.of(context).viewInsets.bottom > 100 ? 50 : 170,
      child: Stack(
        children: [
          colorcontainer == true
              ? Container(
                  height:
                      MediaQuery.of(context).viewInsets.bottom > 100 ? 50 : 180,
                  decoration: const BoxDecoration(
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
            child: Column(
              children: [
                type == 'Buyer'
                    ? Flexible(
                        child: Container(
                            width:
                                MediaQuery.of(context).viewInsets.bottom > 100
                                    ? 50
                                    : 100,
                            height:
                                MediaQuery.of(context).viewInsets.bottom > 100
                                    ? 50
                                    : 100,
                            decoration: BoxDecoration(
                                image: splashscreen == true
                                    ? const DecorationImage(
                                        image: AssetImage(images.mindlogo),
                                        fit: BoxFit.cover)
                                    : const DecorationImage(
                                        image: AssetImage(images.logo),
                                        fit: BoxFit.cover))),
                      )
                    : Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height:
                                MediaQuery.of(context).viewInsets.bottom > 100
                                    ? 50
                                    : 100,
                            decoration: BoxDecoration(
                                color: AppColor.splashbackgroundcolor,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Image(
                              image: AssetImage(images.sellermindlogo),
                            ),
                          ),
                        ),
                      ),
                if (MediaQuery.of(context).viewInsets.bottom < 100)
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
                        icon: const Icon(Icons.keyboard_arrow_left_outlined)),
                  )
                : const Image(
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
  final bool backarrow, centerText;

  final orderHistoryPage;

  final text;

  const customhomeLogo(
      {Key? key,
      required this.backarrow,
      required this.centerText,
      this.text,
      this.orderHistoryPage})
      : super(key: key);

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
              ? Transform.scale(
                  scale: 1.4,
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.keyboard_arrow_left_outlined)),
                )
              : Builder(builder: (context) {
                  return InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Transform.scale(
                          scale: 1.6,
                          alignment: Alignment.topLeft,
                          child:
                              const customImageIcon(img: images.drawerIcon)));
                }),
          Container(
              padding: orderHistoryPage == true
                  ? const EdgeInsets.only(
                      right: 10,
                    )
                  : EdgeInsets.zero,
              child: customText(
                text: centerText == true ? text : '',
                weight: FontWeight.bold,
                size: orderHistoryPage == true ? 30 : 20,
                textColor: AppColor.headertextcolor,
              )),
          Container(
            padding: EdgeInsets.only(top: backarrow == true ? 0 : 10),
            child: type == 'Buyer'
                ? Transform.scale(
                    scale: 2.4,
                    child: orderHistoryPage == true
                        ? const SizedBox.shrink()
                        : customImageIcon(
                            img: images.logo,
                            color: AppColor.splashbackgroundcolor,
                          ))
                : Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: AppColor.splashbackgroundcolor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Transform.scale(
                      scale: 0.7,
                      child: const Image(
                        image: AssetImage(images.sellermindlogo),
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
