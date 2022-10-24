import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customRoundContainer.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customTextField.dart';
import 'package:my_order/utilis/components/customwidgets/customfloatingbutton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/BuyerScreen/register/registeremail.dart';

import '../../SellerScreen/Register/usertype.dart';

final _formkey = GlobalKey<FormState>();

class Createacc extends StatefulWidget {
  const Createacc({Key? key}) : super(key: key);

  @override
  State<Createacc> createState() => _CreateaccState();
}

class _CreateaccState extends State<Createacc> {
  TextEditingController? _nameController;

  TextEditingController? _LastnameController;
  TextEditingController? _addressController;
  TextEditingController? _cityController;
  TextEditingController? _postcodeController;
  TextEditingController? _countryController;
  void initState() {
    print('init');
    _nameController = _nameController;
    _LastnameController = _LastnameController;
    _addressController = _addressController;
    _cityController = _cityController;
    _postcodeController = _postcodeController;
    _countryController = _countryController;
    // TODO: implement initState
    super.initState();
  }

  void dispose() {
    super.dispose();
    print('yes');
    _nameController?.text;
    _LastnameController?.text;
    _addressController?.text;
    _cityController?.text;
    _postcodeController?.text;
    _countryController?.text;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                    colorcontainer: true,
                    backarrow: true,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Container(
                        height: 35,
                        child: FittedBox(
                          child: customText(
                            text: "Let's Begin",
                            textColor: AppColor.splashbackgroundcolor,
                            weight: FontWeight.w600,
                          ),
                        )),
                  ),
                ),
                Flexible(
                  child: Container(
                      height: 25,
                      child: FittedBox(
                        child: customText(
                          text: 'Create My Order Account',
                          textColor: AppColor.headertextcolor,
                          weight: FontWeight.w500,
                        ),
                      )),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Container(
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Row(children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: Container(
                                    height: height * 0.08,
                                    child: customTextfield(
                                        hintstyle: TextStyle(
                                            fontSize: 20,
                                            color: AppColor.colorgrey),
                                        hintext: "First Name",
                                        controller: _nameController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Enter Name';
                                          }

                                          return null;
                                        },
                                        obsecuretext: false,
                                        prefixicon: customImageIcon(
                                          imageicon: images.personIcon,
                                        )),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 7),
                                  child: Container(
                                    height: height * 0.08,
                                    child: customTextfield(
                                        hintstyle: TextStyle(
                                            fontSize: 20,
                                            color: AppColor.colorgrey),
                                        hintext: "Last Name",
                                        controller: _LastnameController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Enter Last Name';
                                          }

                                          return null;
                                        },
                                        obsecuretext: false,
                                        prefixicon: customImageIcon(
                                          imageicon: images.personIcon,
                                        )),
                                  ),
                                ),
                              ),
                            ])),
                            Container(
                              height: height * 0.08,
                              child: customTextfield(
                                  hintstyle: TextStyle(
                                      fontSize: 20, color: AppColor.colorgrey),
                                  hintext: "Address",
                                  controller: _addressController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your Address';
                                    }

                                    return null;
                                  },
                                  obsecuretext: false,
                                  prefixicon: customImageIcon(
                                    imageicon: images.addressicon,
                                  )),
                            ),
                            Container(
                                height: height * 0.08,
                                child: customTextfield(
                                    hintstyle: TextStyle(
                                        fontSize: 20,
                                        color: AppColor.colorgrey),
                                    hintext: "City",
                                    controller: _cityController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your City';
                                      }

                                      return null;
                                    },
                                    obsecuretext: false,
                                    prefixicon: customImageIcon(
                                      imageicon: images.cityicon,
                                    ))),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 7),
                                      child: Container(
                                          height: height * 0.08,
                                          child: customTextfield(
                                              keyboardtype:
                                                  TextInputType.number,
                                              hintstyle: TextStyle(
                                                  fontSize: 20,
                                                  color: AppColor.colorgrey),
                                              hintext: "Postcode",
                                              controller: _postcodeController,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Enter Postcode';
                                                }

                                                return null;
                                              },
                                              obsecuretext: false,
                                              prefixicon: customImageIcon(
                                                imageicon: images.postcodeicon,
                                              ))),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 7),
                                      child: Container(
                                          height: height * 0.08,
                                          child: customTextfield(
                                              hintstyle: TextStyle(
                                                  fontSize: 20,
                                                  color: AppColor.colorgrey),
                                              hintext: "Country",
                                              controller: _countryController,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Enter Your Country';
                                                }

                                                return null;
                                              },
                                              obsecuretext: false,
                                              prefixicon: customImageIcon(
                                                imageicon: images.countryicon,
                                              ))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 160,
                      right: 160,
                    ),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: customRoundContainer(
                                containerColor: AppColor.splashbackgroundcolor),
                          ),
                          Expanded(
                            child: customRoundContainer(
                              containerColor: AppColor.colorlightred,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            ),
            floatingActionButton: customFloatingButton(
              onpress: () {
                if (_formkey.currentState!.validate()) {
                  setState(() {
                    _formkey.currentState?.reset();
                    Navigator.pushNamed(context, RoutesName.regacc);
                  });
                } else {
                  return null;
                }
              },
              child: Transform.scale(
                  scale: 2.4,
                  child: customIcon(
                    iconname: Icons.keyboard_arrow_right,
                  )),
            )));
  }
}
