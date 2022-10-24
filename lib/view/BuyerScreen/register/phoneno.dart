import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    TextEditingController? _verificationController;
    var click;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffffffff),
            body: Column(children: [
              Flexible(
                flex: 3,
                child: customlogo(
                    textcolor: AppColor.headertextcolor,
                    splashscreen: false,
                    backarrow: true),
              ),
              Flexible(
                child: Container(
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
              ),
              Flexible(
                child: Container(
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
              ),
              Flexible(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  alignment: Alignment.center,
                  child: Image(image: AssetImage(images.messageImageIcon)),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Form(
                      key: _formkey,
                      child: customTextfield(
                        textalign: TextAlign.center,
                        hintstyle:
                            TextStyle(fontSize: 20, color: AppColor.colorgrey),
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
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                      alignment: Alignment.topCenter,
                      child: customTextButton(
                        onclick: () {},
                        title: 'Resend Code',
                        color: AppColor.headertextcolor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 75, right: 75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 57,
                        child: customelevatedbutton(
                          onpress: () {
                            if (_formkey.currentState!.validate()) {
                              setState(() {
                                // _formkey.currentState?.reset();

                                Navigator.pushNamed(
                                    context,
                                    type == 'Buyer'
                                        ? RoutesName.homescreen
                                        : RoutesName.stepsleft);
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
