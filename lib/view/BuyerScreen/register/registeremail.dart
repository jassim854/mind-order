import 'package:flutter/material.dart';
import 'package:my_order/Controllers/auth_controller.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customTextField.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

import '../../../utilis/components/customwidgets/customRoundContainer.dart';
import '../../../utilis/components/customwidgets/customIcon.dart';
import '../../../utilis/components/customwidgets/customtextwidget.dart';
import 'location.dart';

final _formkey = GlobalKey<FormState>();

class regacc extends StatefulWidget {
  const regacc({Key? key}) : super(key: key);

  @override
  State<regacc> createState() => _CreateaccState();
}

class _CreateaccState extends State<regacc> {
  bool isvisible = false;
  late TextEditingController _EmailController;
  late TextEditingController _passwordController;
  late TextEditingController _pinlocationController;
  late TextEditingController _phoneController;
  @override
  @override
  void initState() {
    print('init');
    _EmailController = TextEditingController();
    _passwordController = TextEditingController();
    _pinlocationController = TextEditingController();
    _phoneController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  void dispose() {
    super.dispose();
    print('yes');
    _EmailController.dispose();
    _passwordController.dispose();
    _pinlocationController.dispose();
    _phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColor.scaffoldcolor,
            body: Column(children: [
              customlogo(
                textcolor: AppColor.headertextcolor,
                splashscreen: false,
                backarrow: true,
                colorcontainer: true,
              ),
              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom > 50 ? 50 : 0,
              ),
              if (MediaQuery.of(context).viewInsets.bottom < 50)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: FittedBox(
                        child: customText(
                          text: "You 're there",
                          size: 30,
                          textColor: AppColor.splashbackgroundcolor,
                          weight: FontWeight.w600,
                        ),
                      ),
                    ),
                    customText(
                      text: "Create My Order Account",
                      size: 23,
                      textColor: AppColor.headertextcolor,
                      weight: FontWeight.w600,
                    ),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        controller: _EmailController,
                        prefixicon: const customIcon(
                          iconname: Icons.email_outlined,
                          color: AppColor.colorgrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: customTextfield(
                          hintstyle: const TextStyle(
                              fontSize: 20, color: AppColor.colorgrey),
                          obsecuretext: isvisible ? false : true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Password';
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
                      ),
                      customTextfield(
                          hintstyle: const TextStyle(
                              fontSize: 20, color: AppColor.colorgrey),
                          obsecuretext: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Pin Location';
                            }

                            return null;
                          },
                          hintext: "Pin Location",
                          controller: _pinlocationController,
                          prefixicon: const customIcon(
                            iconname: Icons.location_on_outlined,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: phoneField(context)),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.07),
                child: Container(
                  // color: Colors.red,
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customRoundContainer(
                        containerColor: AppColor.colorlightred,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      customRoundContainer(
                        containerColor: AppColor.splashbackgroundcolor,
                      ),
                    ],
                  ),
                ),
              )
            ]),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  AuthController.pinLoc = _pinlocationController.text.trim();

                  AuthController.signUp(
                      context,
                      _EmailController.text.toLowerCase().trim(),
                      _passwordController.text.trim());
                  setState(() {
                    _formkey.currentState?.reset();
                  });
                } else {
                  return null;
                }
              },
              child: const Icon(
                Icons.check_sharp,
                size: 25,
                color: Colors.white,
                shadows: [Shadow(color: Colors.white, offset: Offset(0, 3))],
              ),
              backgroundColor: Colors.red,
            )));
  }

  Widget phoneField(context) {
    return customPhoneField(
      context,
   
      controller: _phoneController,
      onChanged: (phoneNumber) {
        AuthController.number =
            "${phoneNumber.countryCode}${phoneNumber.number}";
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Phone Number';
        }

        return null;
      },
    );
  }
}
