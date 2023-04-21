import 'package:flutter/material.dart';

import '../../constants/Colors/colors.dart';
import '../customwidgets/customIcon.dart';
import '../customwidgets/customtextwidget.dart';

class RowTextSideBySide extends StatelessWidget {
  final text1, text2, onclick;
  const RowTextSideBySide({
    Key? key,
    this.text1,
    this.text2,
    this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      customText(
        text: text1,
        size: 20,
        weight: FontWeight.bold,
        textColor: AppColor.headertextcolor,
      ),
      InkWell(
        onTap: onclick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customText(
              text: text2,
              textColor: AppColor.splashbackgroundcolor,
              size: 14.0,
              weight: FontWeight.w400,
            ),
            Transform.scale(
              scaleY: 1.2,
              child: const customIcon(
                iconname: Icons.keyboard_arrow_right_outlined,
                color: AppColor.splashbackgroundcolor,
              ),
            )
          ],
        ),
      )
    ]);
  }
}

class PopularRow extends StatelessWidget {
  final padding;

  const PopularRow({
    Key? key,
    required this.textConheight,
    required this.imgConHeight,
    required this.textConwidth,
    required this.imgConwidth,
    this.padding,
  }) : super(key: key);

  final double textConheight, imgConHeight;
  final double textConwidth, imgConwidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 10),
              child: Container(
                  padding: EdgeInsets.only(top: padding ?? 25),
                  height: textConheight,
                  width: textConwidth,
                  color: AppColor.textfieldcolorgrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                          text: 'Sushi\nParty Set',
                          size: 19,
                          weight: FontWeight.bold,
                          textalignment: TextAlign.center,
                          textColor: AppColor.colorblack),
                      customText(
                          text: 'Sushu',
                          size: 12,
                          weight: FontWeight.w600,
                          textalignment: TextAlign.center,
                          textColor: AppColor.lightgreyTextcolor),
                      customText(
                          text: '10.71',
                          textalignment: TextAlign.center,
                          size: 19,
                          weight: FontWeight.bold,
                          textColor: AppColor.splashbackgroundcolor),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: Container(
                  height: imgConHeight,
                  width: imgConwidth,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    boxShadow: [],
                    shape: BoxShape.circle,
                  )),
            )
          ],
        ),
      ],
    );
  }
}
