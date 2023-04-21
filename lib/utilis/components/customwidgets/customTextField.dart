import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

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
      onEditingComplete: onEditingComplete,
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
              width: commentfield == true ? 2.8 : 1.0
          ),
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
