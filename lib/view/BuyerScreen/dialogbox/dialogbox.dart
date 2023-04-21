import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customtextbutton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

import '../../../utilis/components/Customscreen/CustomDialogBox.dart';

class dialogbox extends StatefulWidget {
  const dialogbox({Key? key}) : super(key: key);

  @override
  State<dialogbox> createState() => _dialogboxState();
}

class _dialogboxState extends State<dialogbox> {
  Object? _selectedvalue;
  bool press = false;
  final containerval = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          height: 445,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 510,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomDialogHeaderText(
                          text: 'Add-ons',
                        ),
                        const CustomDialogBodytext(
                          text: 'Papperoni',
                        ),
                        const CustomDialogBodytext(
                          text: 'Sausage',
                        ),
                        const CustomDialogBodytext(
                          text: 'Olives',
                        ),
                        const CustomDialogHeaderText(
                          text: 'Sauces',
                        ),
                        const CustomDialogBodytext(
                          text: 'BBQ',
                        ),
                        const CustomDialogBodytext(
                          text: 'Ranch',
                        ),
                        const CustomDialogBodytext(
                          text: 'Garlic',
                        ),
                        const CustomDialogHeaderText(
                          text: 'Drinks',
                        ),
                        const CustomDialogBodytext(
                          text: 'Coke',
                        ),
                        const CustomDialogBodytext(
                          text: 'Spirite',
                        ),
                        const CustomDialogBodytext(
                          text: '7 up',
                        ),
                        const CustomDialogBodytext(
                          text: 'Mojito',
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.translate(
                        offset: const Offset(30, 0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: CustomDialogHeaderText2(
                                  text: 'Single',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[0]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[0] =
                                          !containerval[0];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[1]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[1] =
                                          !containerval[1];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[2]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[2] =
                                          !containerval[2];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 14),
                                child: CustomDialogHeaderText2(
                                  text: 'Single',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[3]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[3] =
                                          !containerval[3];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[4]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[4] =
                                          !containerval[4];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[5]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[5] =
                                          !containerval[5];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                            ]),
                      ),
                      Transform.translate(
                        offset: const Offset(20, 0),
                        child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: CustomDialogHeaderText2(
                                  text: 'Double',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[6]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[6] =
                                          !containerval[6];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[7]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[7] =
                                          !containerval[7];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[8]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[8] =
                                          !containerval[8];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 14),
                                child: CustomDialogHeaderText2(
                                  text: 'Double',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[9]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[9] =
                                          !containerval[9];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[10]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[10] =
                                          !containerval[10];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: CustomDialogTextButton(
                                  backgroundcolor: containerval[11]
                                      ? AppColor.colorYellow
                                      : AppColor.textfieldcolorgrey,
                                  onclick: () {
                                    setState(() {
                                      containerval[11] =
                                          !containerval[11];
                                    });
                                  },
                                  title: 'E 0',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 43, right: 10),
                                child: SizedBox(
                                  width: 109,
                                  child: Column(
                                    children: [
                                      CustomRadioListtile(
                                        groupvalue: _selectedvalue,
                                        switchvalue: 1,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedvalue = value!;
                                          });
                                        },
                                      ),
                                      CustomRadioListtile(
                                        groupvalue: _selectedvalue,
                                        switchvalue: 2,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedvalue = value!;
                                          });
                                        },
                                      ),
                                      CustomRadioListtile(
                                        groupvalue: _selectedvalue,
                                        switchvalue: 3,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedvalue = value!;
                                          });
                                        },
                                      ),
                                      CustomRadioListtile(
                                        groupvalue: _selectedvalue,
                                        switchvalue: 4,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedvalue = value!;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 60,
          decoration: const BoxDecoration(
            color: AppColor.splashbackgroundcolor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(13),
                bottomLeft: Radius.circular(13)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              customText(
                text: 'Total E9',
                size: 16,
                weight: FontWeight.bold,
                textColor: AppColor.scaffoldcolor,
              ),
              customTextButton(
                  onclick: () {
                    setState(() {
                      press = !press;
                    });
                  },
                  child: press
                      ? Transform.scale(
                          scale: 1.5,
                          child: const customIcon(
                            iconname: Icons.check_circle,
                            color: AppColor.scaffoldcolor,
                          ),
                        )
                      : customText(
                          text: 'Add to Cart',
                          size: 16,
                          textColor: AppColor.scaffoldcolor,
                          weight: FontWeight.bold,
                        )),
            ],
          ),
        )
      ],
    );
  }
}
