import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customTextField.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';

final _formkey = GlobalKey<FormState>();

class verifyemail extends StatefulWidget {
  const verifyemail({Key? key}) : super(key: key);

  @override
  State<verifyemail> createState() => _verifyemailState();
}

class _verifyemailState extends State<verifyemail> {
  TextEditingController? _EmailController;
  @override
  @override
  void initState() {
    print('init');
    _EmailController = _EmailController;
    // TODO: implement initState
    super.initState();
  }

  void dispose() {
    super.dispose();
    print('yes');
    _EmailController?.text;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.scaffoldcolor,
            body: Container(
              child: Column(children: [
                Flexible(
                  flex: 2,
                  child: customlogo(
                      textcolor: AppColor.headertextcolor,
                      splashscreen: false,
                      backarrow: true),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(

                        // color: Colors.orange,
                        child: customText(
                      text: 'Write Your Email',
                      textColor: AppColor.splashbackgroundcolor,
                      size: 30,
                      textalignment: TextAlign.center,
                      weight: FontWeight.w600,
                    )),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(

                        // color: Colors.blue,
                        child: customText(
                      text: 'See if email is already in use',
                      size: 23,
                      textColor: AppColor.headertextcolor,
                      weight: FontWeight.w500,
                    )),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 45),
                    child: Container(
                        child: Form(
                      key: _formkey,
                      child: customTextfield(
                        hintstyle:
                            TextStyle(fontSize: 20, color: AppColor.colorgrey),
                        obsecuretext: false,
                        keyboardtype: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email id';
                          }
                          if (!RegExp('@.').hasMatch(value)) {
                            return 'Please enter your valid email  ';
                          }
                          return null;
                        },
                        hintext: 'Email',
                        controller: _EmailController,
                        prefixicon: customIcon(
                          iconname: Icons.email_outlined,
                          color: AppColor.colorgrey,
                        ),
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, right: 75),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 57,
                          child: customelevatedbutton(
                              onpress: () {
                                if (_formkey.currentState!.validate()) {
                                  setState(() {
                                    _formkey.currentState?.reset();
                                    Navigator.pushNamed(
                                        context, RoutesName.Createacc);
                                  });
                                  return null;
                                }
                              },
                              child: customText(
                                text: 'Continue',
                                size: 21,
                                weight: FontWeight.w700,
                              ),
                              color: AppColor.splashbackgroundcolor),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            )));
  }
}
