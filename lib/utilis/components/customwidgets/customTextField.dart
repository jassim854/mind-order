import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

class customTextfield extends StatelessWidget {
  final hintext,
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
      onchange;
  final dynamic? textalign;

  const customTextfield(
      {Key? key,
      required this.hintext,
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
      this.onchange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchange,
      textAlign: textalign == null ? TextAlign.start : textalign,
      onEditingComplete: onEditingComplete,
      obscureText: obsecuretext,
      controller: controller,
      keyboardType: keyboardtype,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        errorStyle: TextStyle(
          fontSize: 15.0,
        ),
        prefixIcon: prefixicon,
        contentPadding: contentPading,
        filled: true,
        fillColor: AppColor.textfieldcolorgrey,
        hintText: hintext,
        hintStyle: hintstyle,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
