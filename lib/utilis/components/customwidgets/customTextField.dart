import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class customTextfield extends StatelessWidget {
  final hintext,
      maxline,
      keyboardtype,
      controller,
      obsecuretext,
      prefixicon,
      suffixicon,
      validator,
      onEditingComplete,
      contentPading,
      errorStyle,
      hintstyle,
      onchange,
      textalign;
  final bool? commentfield;

  const customTextfield(
      {Key? key,
      this.hintext,
      this.keyboardtype,
      this.controller,
      this.obsecuretext,
      this.prefixicon,
      this.suffixicon,
      this.validator,
      this.onEditingComplete,
      this.contentPading,
      this.errorStyle,
      this.hintstyle,
      this.textalign,
      this.onchange,
      this.commentfield,
      this.maxline})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      maxLines: commentfield == true ? maxline : 1,
      onChanged: onchange,
      textAlign: textalign ?? TextAlign.start,
      onFieldSubmitted:       onEditingComplete,

      obscureText: obsecuretext,
      controller: controller,
      keyboardType: keyboardtype,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        errorStyle: const TextStyle(
          fontSize: 15.0,
        ),
        prefixIcon: prefixicon,
        contentPadding: contentPading,
        filled: true,
        fillColor: commentfield == true
            ? AppColor.scaffoldcolor
            : AppColor.textfieldcolorgrey,
        hintText: hintext,
        hintStyle: hintstyle,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: commentfield == true
                    ? AppColor.drawericonColor
                    : Colors.white,
                width: commentfield == true ? 2.8 : 1.0),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            )),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: commentfield == true
                  ? AppColor.drawericonColor
                  : Colors.white,
              width: commentfield == true ? 2.8 : 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}

Widget customPhoneField(
  context, {
  Function? onPressed,
  var labelText,
  final FormFieldSetter<String>? onSaved,
  final String? hintText,
  final bool obscureText = false,
  final FormFieldValidator<String>? validator,
  final keyboardType,
  var textInputAction = TextInputAction.next,
  final border,
  final minLines,
  final controller,
  final maxLines,
  final bool enabled = true,
  final onChanged,
  final onSave,
  final onSubmit,
  var prefix,
  var prefixText,
  var maxLength,
  final focusNode,
}) {
  return IntlPhoneField(
    controller: controller,
    inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z]")),
    ],
    decoration: InputDecoration(
      hintText: "Phone number",
      hintStyle: TextStyle(fontSize: 20, color: AppColor.colorgrey),
      filled: true,
      fillColor: AppColor.textfieldcolorgrey,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          )),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    ),
    keyboardType: TextInputType.phone,
    textInputAction: TextInputAction.done,
    initialCountryCode: 'PK',
    showCountryFlag: true,
    disableLengthCheck: false,
    invalidNumberMessage: 'invalid_mobile_number',

    showDropdownIcon: true,
    dropdownIconPosition: IconPosition.leading,
    autofocus: false,
    obscureText: obscureText,

    // maxLines: maxLines,

    dropdownIcon: const Icon(Icons.keyboard_arrow_down,
        color: AppColor.splashbackgroundcolor),
    onChanged: onChanged,
    onSaved: onSave,
    onSubmitted: onSubmit,
  );
}
