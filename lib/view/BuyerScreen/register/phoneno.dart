import 'package:flutter/material.dart';
import 'package:my_order/Controllers/auth_controller.dart';
import 'package:my_order/Helper/basehelper.dart';
import 'package:my_order/utilis/components/customwidgets/customtextbutton.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/SellerScreen/Register/usertype.dart';
import '../../../utilis/components/Customscreen/header.dart';
import '../../../utilis/components/customwidgets/customElevatedButton.dart';
import '../../../utilis/components/customwidgets/customTextField.dart';
import '../../../utilis/components/customwidgets/customtextwidget.dart';
import '../../../utilis/constants/Colors/colors.dart';

final _formkey = GlobalKey<FormState>();

class phoneno extends StatefulWidget {
  const phoneno({Key? key}) : super(key: key);

  @override
  State<phoneno> createState() => _phonenoState();
}

class _phonenoState extends State<phoneno> {
  late TextEditingController _verificationController;
  @override
  void initState() {
    AuthController.verifyPhoneNumber(context);
    _verificationController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _verificationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color(0xffffffff),
            body: Column(children: [
              customlogo(
                  textcolor: AppColor.headertextcolor,
                  splashscreen: false,
                  backarrow: true),
              if (MediaQuery.of(context).viewInsets.bottom < 100)
                Column(
                  children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.only(top: 10),
                        // color: Colors.orange,
                        child: FittedBox(
                          child: customText(
                            text: "Validate Number",
                            textColor: AppColor.splashbackgroundcolor,
                            size: 30,
                            textalignment: TextAlign.center,
                            weight: FontWeight.w600,
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.only(top: 10),

                        // color: Colors.blue,
                        child: FittedBox(
                          child: customText(
                            text: "Enter the Confirmation Code",
                            size: 23,
                            textColor: AppColor.headertextcolor,
                            weight: FontWeight.w500,
                          ),
                        )),
                  ],
                ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage(images.messageImageIcon),
                  height: MediaQuery.of(context).viewInsets.bottom > 100
                      ? 200
                      : 300,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Form(
                    key: _formkey,
                    child: customTextfield(
                      onEditingComplete: (value) {
                        AuthController.verifyOtp(context, value);
                      },
                      textalign: TextAlign.center,
                      hintstyle: const TextStyle(
                          fontSize: 20, color: AppColor.colorgrey),
                      obsecuretext: false,
                      keyboardtype: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your valid number';
                        }

                        return null;
                      },
                      hintext: 'Enter Verification Code',
                      controller: _verificationController,
                    ),
                  )),
              AuthController.maxsecond == 0
                  ? Container(
                      alignment: Alignment.topCenter,
                      child: customTextButton(
                        onclick: () {
                          AuthController.verifyPhoneNumber(context);
                          setState(() {});
                        },
                        title: 'Resend Code',
                        textcolor: AppColor.headertextcolor,
                      ))
                  : Text(AuthController.maxsecond.toString()),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 75, right: 75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 57,
                        child: customelevatedbutton(
                          onpress: () {
                            if (_formkey.currentState!.validate()) {
                              AuthController.verifyOtp(
                                  context, _verificationController.text.trim());
                              BaseHelper.hideKeypad(context);
                              setState(() {
                                // _formkey.currentState?.reset();
                              });
                            } else {
                              print("error");
                            }
                          },
                          child: FittedBox(
                            child: customText(
                              text: "Continue",
                              size: 21,
                              weight: FontWeight.w700,
                            ),
                          ),
                          color: AppColor.splashbackgroundcolor,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }
}
