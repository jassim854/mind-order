import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_order/Controllers/auth_controller.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customTextField.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/BuyerScreen/register/createaccount.dart';

final _formkey = GlobalKey<FormState>();

class verifyemail extends StatefulWidget {
  const verifyemail({Key? key}) : super(key: key);

  @override
  State<verifyemail> createState() => _verifyemailState();
}

class _verifyemailState extends State<verifyemail> {
  bool isvisible = false;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  @override
  void initState() {
    print('init');
    _emailController = TextEditingController();
    _passwordController = TextEditingController();

    // TODO: implement initState
    super.initState();
  }

  void dispose() {
    super.dispose();
    print('yes');
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColor.scaffoldcolor,
            body: Column(children: [
              customlogo(
                  textcolor: AppColor.headertextcolor,
                  splashscreen: false,
                  backarrow: true),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: customText(
                  text: 'Write Your Email',
                  textColor: AppColor.splashbackgroundcolor,
                  size: 30,
                  textalignment: TextAlign.center,
                  weight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: customText(
                  text: 'See if email is already in use',
                  size: 23,
                  textColor: AppColor.headertextcolor,
                  weight: FontWeight.w500,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      customTextfield(
                        hintstyle: const TextStyle(
                            fontSize: 20, color: AppColor.colorgrey),
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
                        controller: _emailController,
                        prefixicon: const customIcon(
                          iconname: Icons.email_outlined,
                          color: AppColor.colorgrey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      customTextfield(
                        hintstyle: const TextStyle(
                            fontSize: 20, color: AppColor.colorgrey),
                        obsecuretext: false,
                        keyboardtype: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length <= 6) {
                            return 'Please enter your valid password  ';
                          }
                          return null;
                        },
                        hintext: "Password",
                        controller: _passwordController,
                        prefixicon:
                            const customImageIcon(img: images.passwordicon),
                        suffixicon: InkWell(
                            onTap: () {
                              setState(() {
                                isvisible = !isvisible;
                              });
                            },
                            child: customImageIcon(
                              img: images.password2icon,
                              color: isvisible ? Colors.red : Colors.black,
                            )),
                      ),
                    ],
                  ),
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
                                  AuthController.logInAuth(
                                      context,
                                      _emailController.text
                                          .trim()
                                          .toLowerCase(),
                                      _passwordController.text.trim());
                                  // Navigator.pushNamed(
                                  //     context, RoutesName.createacc);
                                });
                                return null;
                              }
                            },
                            child: customText(
                              text: 'Sign in',
                              size: 21,
                              weight: FontWeight.w700,
                            ),
                            color: AppColor.splashbackgroundcolor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RoutesName.createacc, (route) => false);
                  },
                  child: Text(
                    'Not have an account',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColor.splashbackgroundcolor,
                        fontSize: 16),
                  ))
            ])));
  }
}
