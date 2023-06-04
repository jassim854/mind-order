import 'package:flutter/material.dart';

import '../../constants/Colors/colors.dart';
import '../customwidgets/customtextbutton.dart';
import '../customwidgets/customtextwidget.dart';

class CustomDialogHeaderText extends StatelessWidget {
  final text;

  const CustomDialogHeaderText({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customText(
      text: text,
      size: 20,
      weight: FontWeight.bold,
      textColor: AppColor.dialogHeaderColor,
    );
  }
}

class CustomDialogBodytext extends StatelessWidget {
  final text;

  const CustomDialogBodytext({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customText(
      text: text,
      size: 17,
      weight: FontWeight.w400,
      textColor: AppColor.dialogHeaderColor,
    );
  }
}

class CustomDialogHeaderText2 extends StatelessWidget {
  final text;

  const CustomDialogHeaderText2({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customText(
      text: text,
      size: 14,
      weight: FontWeight.w400,
      textColor: AppColor.headertextcolor,
    );
  }
}

class CustomDialogTextButton extends StatelessWidget {
  final onclick, title, backgroundcolor;

  const CustomDialogTextButton(
      {Key? key, this.onclick, this.title, this.backgroundcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 32,
      child: customTextButton(
        backgroundcolor: backgroundcolor,
        onclick: onclick,
        title: title,
        textcolor: AppColor.headertextcolor,
        textsize: 14.0,
        weight: FontWeight.w400,
      ),
    );
  }
}

class CustomRadioListtile extends StatelessWidget {
  final switchvalue, onChanged, groupvalue;

  const CustomRadioListtile(
      {Key? key, this.switchvalue, this.onChanged, this.groupvalue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Transform.translate(
        offset: const Offset(22, -10),
        child: RadioListTile(
          value: switchvalue,
          groupValue: groupvalue,
          onChanged: onChanged,
          activeColor: AppColor.colorYellow,
          controlAffinity: ListTileControlAffinity.trailing,
          title: Transform.translate(
            offset: const Offset(0, 0),
            child: customText(
              text: '£ 0',
              size: 14,
              weight: FontWeight.w400,
              textColor: AppColor.headertextcolor,
            ),
          ),
        ),
      ),
    );
  }
}
