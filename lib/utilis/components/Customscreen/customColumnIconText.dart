import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customPopupMenuButton.dart';

import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

class CustomColumnIconText extends StatelessWidget {
  final img, onclick, text, textsize, weight, color, textcolor, ontap;
  final bool? paymentcontainer;
  final value = 1, value2 = 2, value3 = 3;
  var setdisplay;

  CustomColumnIconText(
      {Key? key,
      this.img,
      this.onclick,
      this.text,
      this.textsize,
      this.weight,
      this.color,
      this.textcolor,
      this.paymentcontainer,
      this.ontap,
      this.setdisplay})
      : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
              height: paymentcontainer == true ? 60 : 55,
              width: paymentcontainer == true ? 60 : 55,
              decoration: BoxDecoration(
                  color: paymentcontainer == true
                      ? const Color.fromARGB(209, 255, 236, 236)
                      : AppColor.textfieldcolorgrey,
                  borderRadius:
                      BorderRadius.circular(paymentcontainer == true ? 7 : 15)),
              child: paymentcontainer == true
                  ? InkWell(
                      onTap: ontap,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                customImageIcon(
                                  img: img,
                                  color: color,
                                ),
                                customText(
                                  text: text,
                                  size: 15,
                                  textColor: AppColor.headertextcolor,
                                ),
                              ],
                            ),
                          ),
                          setdisplay
                              ? const Positioned(
                                  right: -10,
                                  top: -9,
                                  child: customIcon(
                                    iconname: Icons.check_circle,
                                    size: 20.0,
                                    color: AppColor.splashbackgroundcolor,
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    )
                  : Transform.scale(
                      scale: 1.1,
                      child: InkWell(
                          onTap: onclick,
                          child: customImageIcon(img: img, color: color)))),
        ),
        paymentcontainer == true
            ? Container()
            : Flexible(
                child: FittedBox(
                    child: customText(
                text: text,
                size: textsize,
                textColor: textcolor,
              )))
      ],
    );
  }
}

class CustomRowIcon_SliderText extends StatefulWidget {
  final img,
      text,
      textsize,
      weight,
      imgcolor,
      textcolor,
      slidervalue,
      slideronchange;
  final bool? sliders, cart;

  const CustomRowIcon_SliderText(
      {Key? key,
      this.img,
      this.text,
      this.textsize,
      this.weight,
      this.imgcolor,
      this.textcolor,
      this.sliders,
      this.slidervalue,
      this.slideronchange,
      this.cart})
      : super(key: key);

  @override
  State<CustomRowIcon_SliderText> createState() =>
      _CustomRowIcon_SliderTextState();
}

class _CustomRowIcon_SliderTextState extends State<CustomRowIcon_SliderText> {
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // mainAxisAlignment: widget.sliders == true
      //     ? MainAxisAlignment.start
      //     : MainAxisAlignment.start,
      children: [
        Flexible(
          flex: widget.sliders == true ? 7 : 1,
          child: widget.sliders == true
              ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Transform.translate(
                  offset: Offset(widget.cart == true ? 40 : 0, 0),
                  child: FittedBox(
                    child: customText(
                      text: 'Regular',
                      size: 14.0,
                      weight: FontWeight.w600,
                      textColor: AppColor.lightgreytextcolor3,
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Transform.scale(
                    origin: Offset(widget.cart == true ? 110 : 0, 0),
                    scale: widget.cart == true ? 0.8 : 1.0,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          top: 14,
                          bottom: 14,
                          right: 18,
                          left: 18,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.yellow,
                                    Colors.orange,
                                    Colors.red,
                                  ],
                                )),
                          ),
                        ),
                        SliderTheme(
                          data: const SliderThemeData(
                              activeTrackColor: Colors.transparent,
                              inactiveTrackColor: Colors.transparent,
                              trackHeight: 18,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15)),
                          child: Slider(
                            min: 0,
                            max: 100,
                            value: widget.slidervalue,
                            onChanged: widget.slideronchange,
                            thumbColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
                )
              : Transform.scale(
                  scale: 1.1,
                  child: customImageIcon(
                      img: widget.img, color: widget.imgcolor)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: customText(
            text: widget.text,
            size: widget.textsize,
            textColor: widget.textcolor,
            weight: widget.weight,
          ),
        )
      ],
    );
  }
}

class CustomRowTextPopup extends StatefulWidget {
  final onselected, items;
  final String text;
  const CustomRowTextPopup(
      {Key? key, this.onselected, required this.text, this.items})
      : super(key: key);

  @override
  State<CustomRowTextPopup> createState() => _CustomRowTextPopupState();
}

class _CustomRowTextPopupState extends State<CustomRowTextPopup> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        customText(
          text: widget.text.toString(),
          size: 14.0,
          weight: FontWeight.w600,
          textColor: AppColor.lightgreytextcolor3,
        ),
        customPopupMenuButton(
          onselected: widget.onselected,
          arrowIcon: true,
          items: widget.items,
        )
      ],
    );
  }
}
