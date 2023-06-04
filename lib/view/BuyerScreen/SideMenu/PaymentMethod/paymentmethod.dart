import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import '../../../../utilis/components/customwidgets/customIcon.dart';
import '../../../../utilis/components/customwidgets/customfloatingbutton.dart';
import '../../../../utilis/constants/Colors/colors.dart';
import '../../HomeTab/drawerScreen/drawerscreen.dart';

final _formkey = GlobalKey<FormState>();
final _formkey1 = GlobalKey<FormState>();

class paymentmethods extends StatefulWidget {
  const paymentmethods({Key? key}) : super(key: key);

  @override
  State<paymentmethods> createState() => _paymentmethodsState();
}

class _paymentmethodsState extends State<paymentmethods> {
  bool isvisible = false;

  bool press = false;
  bool press1 = false;
  var f;

  TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: const mydrawer(),
            floatingActionButton: customFloatingButton(
                onpress: () {},
                child: Transform.scale(
                    scale: 1.7,
                    child: const customIcon(
                      iconname: Icons.keyboard_arrow_right,
                      color: AppColor.colorwhite,
                    ))),
            backgroundColor: const Color(0xfffafafb),
            body: ListView(children: [
              Container(
                height: 140,
                decoration:
                    BoxDecoration(color: const Color(0xfffffffff), boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    // spreadRadius: 100,
                    // blurRadius: 500
                  )
                ]),
                child: Column(
                  children: [
                    customhomeLogo(backarrow: false, centerText: false),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.keyboard_arrow_left,
                                size: 37,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Payment Methods",
                            style: TextStyle(
                                fontSize: 34,
                                color: Color(0xff40484E),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Container(
                      height: 270,
                      width: 300,
                      decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            const BoxShadow(
                                // color: Colors.black,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                                blurRadius: 0.2,
                                blurStyle: BlurStyle.normal)
                          ]),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 25,
                            top: 20,
                            child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(images.paypalicon),
                                      fit: BoxFit.fill),
                                )),
                          ),
                          Positioned(
                              right: 25,
                              top: 5,
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        press = !press;
                                      });
                                    },
                                    icon: press == true
                                        ? const Icon(Icons.check_circle)
                                        : const Icon(
                                            Icons.radio_button_off_outlined),
                                    color: Colors.red,
                                  ))),
                          Positioned(
                              right: 0,
                              top: -15,
                              left: 0,
                              child: Center(
                                child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/accicons/trash1.png",
                                          ),
                                          fit: BoxFit.fill),
                                    )),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 75, left: 15, right: 0),
                            child: Form(
                              key: _formkey,
                              child: Column(
                                children: [
                                  Container(
                                      width: 312,
                                      height: 70,
                                      child: TextFormField(
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your Email';
                                            }
                                            if (!RegExp("@.").hasMatch(value)) {
                                              return 'Please enter your valid email  ';
                                            }
                                            return null;
                                          },
                                          decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 30, top: 40),
                                            filled: true,
                                            fillColor: Color(0xffF3F5F8),
                                            errorStyle: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                            hintText: "Email",
                                            hintStyle: TextStyle(fontSize: 20),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(13.0))),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13.0)),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red, width: 2),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13.0)),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red,
                                                  width: 2.0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13.0)),
                                            ),
                                          ))),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      // color: Colors.red,
                                      width: 312,
                                      height: 70,
                                      child: TextFormField(
                                        // expands: true,
                                        // maxLines: null,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your Password';
                                          } else if (value.length <= 7) {
                                            return 'Please enter your password greater than 8 ';
                                          }

                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.only(
                                              left: 30, top: 40),
                                          filled: true,
                                          fillColor: const Color(0xffF3F5F8),
                                          errorStyle: const TextStyle(
                                            fontSize: 15.0,
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () {
                                              setState(() {
                                                isvisible = !isvisible;
                                              });
                                            },
                                            child: ImageIcon(
                                              AssetImage(images.password2icon),
                                              color: isvisible
                                                  ? Colors.red
                                                  : Colors.black,
                                            ),
                                          ),
                                          hintText: "Password",
                                          hintStyle:
                                              const TextStyle(fontSize: 20),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.all(Radius
                                                          .circular(13.0))),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(13.0)),
                                          ),
                                          errorBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.red, width: 2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(13.0)),
                                          ),
                                          focusedErrorBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.red, width: 2.0),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(13.0)),
                                          ),
                                        ),
                                        obscureText: isvisible ? false : true,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ))),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Container(
                      height: 325,
                      width: 300,
                      decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            const BoxShadow(
                                // color: Colors.black,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                                blurRadius: 0.2,
                                blurStyle: BlurStyle.normal)
                          ]),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 25,
                            top: 20,
                            child: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(images.creditcard),
                                      fit: BoxFit.fill),
                                )),
                          ),
                          Positioned(
                              right: 25,
                              top: 5,
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        press1 = !press1;
                                      });
                                    },
                                    icon: press1 == true
                                        ? const Icon(Icons.check_circle)
                                        : const Icon(
                                            Icons.radio_button_off_outlined),
                                    color: Colors.red,
                                  ))),
                          Positioned(
                              right: 0,
                              top: -15,
                              left: 0,
                              child: Center(
                                child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/accicons/trash1.png",
                                          ),
                                          fit: BoxFit.fill),
                                    )),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 75, left: 15, right: 0),
                            child: Form(
                              key: _formkey1,
                              child: Column(
                                children: [
                                  Container(
                                      width: 312,
                                      height: 70,
                                      child: TextFormField(
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your Card Number';
                                            }

                                            return null;
                                          },
                                          decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 30, top: 40),
                                            filled: true,
                                            fillColor: Color(0xffF3F5F8),
                                            errorStyle: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                            hintText: "Card Number",
                                            hintStyle: TextStyle(fontSize: 20),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(13.0))),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13.0)),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red, width: 2),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13.0)),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red,
                                                  width: 2.0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13.0)),
                                            ),
                                          ))),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 312,
                                    child: Row(
                                      children: [
                                        Container(
                                            width: 150,
                                            height: 70,
                                            child: TextFormField(
                                              keyboardAppearance: null,
                                              keyboardType: null,
                                              controller: _date,
                                              onTap: () async {
                                                print("yess");
                                                DateTime? _datetime =
                                                    await showDatePicker(
                                                        context: context,
                                                        initialDate: f == null
                                                            ? DateTime.now()
                                                            : f,
                                                        firstDate:
                                                            DateTime(1990),
                                                        lastDate:
                                                            DateTime(2050));
                                                if (_datetime != null) {
                                                  setState(() {
                                                    f = _datetime;
                                                  });
                                                }
                                                if (_datetime != null) {
                                                  setState(() {
                                                    _date.text =
                                                        DateFormat('dd-MM-yy')
                                                            .format(_datetime);
                                                  });
                                                }
                                              },
                                              // expands: true,
                                              // maxLines: null,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Enter Expiry date';
                                                }

                                                return null;
                                              },
                                              decoration: const InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                    left: 20,
                                                    top: 40,
                                                    right: 0),
                                                filled: true,
                                                fillColor: Color(0xffF3F5F8),
                                                errorStyle: TextStyle(
                                                  fontSize: 15.0,
                                                ),
                                                hintText: "dd/mm/yy",
                                                hintStyle:
                                                    TextStyle(fontSize: 20),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    13.0))),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              13.0)),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.red,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              13.0)),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.red,
                                                      width: 2.0),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              13.0)),
                                                ),
                                              ),
                                            )),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            width: 152,
                                            height: 70,
                                            child: TextFormField(
                                              // expands: true,
                                              // maxLines: null,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Enter CVC/CVV';
                                                }

                                                return null;
                                              },
                                              decoration: const InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                    left: 20,
                                                    top: 40,
                                                    right: 0),
                                                filled: true,
                                                fillColor: Color(0xffF3F5F8),
                                                errorStyle: TextStyle(
                                                  fontSize: 15.0,
                                                ),
                                                hintText: "CVC/CVV",
                                                hintStyle:
                                                    TextStyle(fontSize: 20),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    13.0))),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              13.0)),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.red,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              13.0)),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.red,
                                                      width: 2.0),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              13.0)),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width: 312,
                                      height: 70,
                                      child: TextFormField(
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter Cardholder Name';
                                            }

                                            return null;
                                          },
                                          decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 20, top: 40, right: 0),
                                            filled: true,
                                            fillColor: Color(0xffF3F5F8),
                                            errorStyle: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                            hintText: "Cardholder Namer",
                                            hintStyle: TextStyle(fontSize: 20),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(13.0))),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13.0)),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red, width: 2),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13.0)),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red,
                                                  width: 2.0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13.0)),
                                            ),
                                          ))),
                                ],
                              ),
                            ),
                          )
                        ],
                      ))),
              const SizedBox(
                height: 20,
              ),
            ])));
  }
}
