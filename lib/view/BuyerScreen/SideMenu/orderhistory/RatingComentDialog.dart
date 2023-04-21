import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

import '../../../../utilis/components/customwidgets/customIcon.dart';

class RatingCommentDialog extends StatelessWidget {
  const RatingCommentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _feedbackController = TextEditingController();
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
                height: 270,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: customText(
                        text: "Thanks for Rating",
                        size: 20,
                        weight: FontWeight.bold,
                        textColor: AppColor.dialogHeaderColor,
                      ),
                    ),
                    customText(
                      text: "Would you like\nto comment:",
                      size: 17,
                      weight: FontWeight.w400,
                      textColor: AppColor.dialogHeaderColor,
                      textalignment: TextAlign.center,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                      child: SizedBox(
                        height: 130,
                        child: TextFormField(
                          autofocus: true,
                          style: const TextStyle(fontSize: 18),
                          maxLines: 7,
                          decoration: const InputDecoration(
                              fillColor: AppColor.textfieldcolorgrey,
                              filled: true,
                              hintText: "\n\n                  Feedback",
                              hintStyle: TextStyle(
                                color: AppColor.lightgreyTextcolor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                    )
                  ],
                )),
            Positioned(
                top: -30,
                child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: AppColor.splashbackgroundcolor,
                        shape: BoxShape.circle),
                    child: const customImageIcon(
                      img: images.smileimg,
                      color: AppColor.scaffoldcolor,
                    )))
          ],
        ));
  }
}
