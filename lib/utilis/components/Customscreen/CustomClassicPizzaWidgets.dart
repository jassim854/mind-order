import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import '../../../view/BuyerScreen/dialogbox/dialogbox.dart';
import '../../constants/Colors/colors.dart';
import '../customwidgets/customElevatedButton.dart';
import '../customwidgets/customIcon.dart';
import '../customwidgets/customtextwidget.dart';
import 'customColumnIconText.dart';

class customIncDecOperatorwidget extends StatelessWidget {
  final colordec,
      text,
      colorinc,
      textsize,
      textcolor,
      deconclick,
      inconclick,
      weight,
      Incscale,
      Decscale;
  const customIncDecOperatorwidget({
    Key? key,
    this.colordec,
    this.text,
    this.colorinc,
    this.textsize,
    this.textcolor,
    this.deconclick,
    this.inconclick,
    this.weight,
    this.Incscale,
    this.Decscale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Transform.scale(
          scale: Incscale ?? 1.0,
          child: customIconButton(
            icon: Icons.remove,
            color: colordec,
            onclick: deconclick,
          ),
        ),
        customText(
          text: text,
          size: textsize ?? 20,
          weight: weight ?? FontWeight.bold,
          textColor: textcolor ?? AppColor.colorblack,
        ),
        Transform.scale(
          scale: Decscale ?? 1.0,
          child: customIconButton(
            icon: Icons.add,
            color: colorinc,
            onclick: inconclick,
          ),
        )
      ],
    );
  }
}

class customAddDialogButton extends StatelessWidget {
  const customAddDialogButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 91,
      height: 40,
      child: customelevatedbutton(
          onpress: () {
            showDialog(
                useSafeArea: false,
                context: context,
                builder: (context) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SimpleDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              titlePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              title: Padding(
                                padding:
                                    EdgeInsets.only(left: 29, right: 29),
                                child: Divider(
                                  color: AppColor.splashbackgroundcolor,
                                  thickness: 9,
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              children: [dialogbox()])
                        ]));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          customText(
              text: 'Add',
              size: 17,
              weight: FontWeight.bold,
              textColor: AppColor.scaffoldcolor),
          Transform.translate(
            offset: const Offset(12, -7),
            child: customText(
              text: '+',
              size: 21,
              weight: FontWeight.bold,
              textColor: AppColor.scaffoldcolor,
            ),
          )
            ],
          ),
          color: AppColor.splashbackgroundcolor),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  final value, onChanged;

  const CustomSwitch({Key? key, this.value, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 26,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.lightgreyTextcolor, width: 3.6),
        // color: Colors.grey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Transform.scale(
        scale: 0.5,
        child: CupertinoSwitch(
            trackColor: Colors.transparent,
            activeColor: AppColor.lightgreyTextcolor,
            thumbColor: value == true
                ? AppColor.colorwhite
                : AppColor.lightgreyTextcolor,
            value: value,
            onChanged: onChanged),
      ),
    );
  }
}

class CustomClassicPizzaWidget extends StatelessWidget {
  final slidervalue,
      slideronchange,
      popuptext,
      onselectedpopup,
      switchvalue,
      switchonchanged,
      items;
  final bool? cart;

  const CustomClassicPizzaWidget(
      {Key? key,
      this.slidervalue,
      this.slideronchange,
      this.popuptext,
      this.onselectedpopup,
      this.switchvalue,
      this.switchonchanged,
      this.cart,
      this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: cart == true ? 35 : 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 85,
                // color: Colors.black,
                child: const CustomRowIcon_SliderText(
                  img: images.redchilliIcon,
                  imgcolor: AppColor.colorred,
                  text: 'Spice',
                  textsize: 18.0,
                  weight: FontWeight.w600,
                  textcolor: AppColor.headertextcolor,
                ),
              ),
              SizedBox(
                width: 245,
                child: CustomRowIcon_SliderText(
                  cart: cart,
                  sliders: true,
                  slidervalue: slidervalue,
                  slideronchange: slideronchange,
                  text: "hot",
                  textsize: 14.0,
                  textcolor: AppColor.splashbackgroundcolor,
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            width: 210,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 75,
                  child: const CustomRowIcon_SliderText(
                    img: images.Sizeimg,
                    imgcolor: AppColor.colorred,
                    text: 'Size',
                    textsize: 18.0,
                    weight: FontWeight.w600,
                    textcolor: AppColor.headertextcolor,
                  ),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: CustomRowTextPopup(
                      text: popuptext,
                      onselected: onselectedpopup,
                      items: items,
                    ))
              ],
            ),
          ),
        ),
        // CustomFlexibleSizeBox(
        //   flex: 1,
        //   height: 7,
        // ),
        Container(
          padding:
              EdgeInsets.only(left: 10, right: 30, top: cart == false ? 5 : 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                child: const CustomRowIcon_SliderText(
                  img: images.cheeseImg,
                  text: "More Cheese",
                  imgcolor: AppColor.colorred,
                  textsize: 18.0,
                  weight: FontWeight.w600,
                  textcolor: AppColor.headertextcolor,
                ),
              ),
              cart == true
                  ? const Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 0),
                      child: customAddDialogButton(),
                    )
                  : Container(),
              CustomSwitch(
                  value: switchvalue, onChanged: switchonchanged),
            ],
          ),
        ),

        cart == false
            ? const Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: customAddDialogButton(),
                ),
              )
            : Container()
      ],
    );
  }
}
