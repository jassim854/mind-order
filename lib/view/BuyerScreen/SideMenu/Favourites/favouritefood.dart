import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/customOrderHistoryWidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import '../../../../utilis/components/Customscreen/header.dart';
import '../../../../utilis/components/customwidgets/customElevatedButton.dart';
import '../../../../utilis/components/customwidgets/customIcon.dart';
import '../../../../utilis/components/customwidgets/customfloatingbutton.dart';
import '../../../../utilis/components/customwidgets/customtextwidget.dart';
import '../../../../utilis/constants/Colors/colors.dart';
import '../../../../utilis/constants/Routes/route_names.dart';
import '../../HomeTab/bottomAppbar.dart';
import '../../HomeTab/classicPizza/classicPizza.dart';
import '../../HomeTab/drawerScreen/drawerscreen.dart';
import '../orderhistory/RatingComentDialog.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  String sizetext = 'Coke';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.scaffoldcolor2,
            body: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 130,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const customhomeLogo(
                            backarrow: false, centerText: false),
                        const customhomeLogo(
                            backarrow: true,
                            centerText: true,
                            text: "Favourites",
                            orderHistoryPage: true),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        if (index.isEven) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              width: double.infinity,
                              height: 470,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColor.scaffoldcolor,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 2,
                                        blurRadius: 12)
                                  ]),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25, top: 15),
                                  child: CustomOrderWidget(
                                    indexEven: true,
                                    favourite: true,
                                    text1: 'Drink',
                                    text2: sizetext.toString(),
                                    text3: 'Cheese',
                                    text4: '',
                                    headertext: 'pizza',
                                    divider: true,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25, top: 200),
                                  child: CustomOrderWidget(
                                    indexEven: true,
                                    favourite: true,
                                    text1: 'Drink',
                                    text2: sizetext.toString(),
                                    text3: 'Cheese',
                                    text4: '',
                                    headertext: 'pizza',
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 20, bottom: 10),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: customelevatedbutton(
                                      padding: 14.0,
                                      onpress: () {
                                        Navigator.pushNamed(
                                            context, RoutesName.classicpizza);
                                      },
                                      child: FittedBox(
                                        child: customText(
                                          text: 'Order Again',
                                          size: 16,
                                          weight: FontWeight.bold,
                                        ),
                                      ),
                                      color: AppColor.splashbackgroundcolor,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -30,
                                  right: 0,
                                  left: 0,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    clipBehavior: Clip.none,
                                    child: Image.asset(images.pizzaheartimg),
                                  ),
                                )
                              ]),
                            ),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: const bottomAppbar(),
            floatingActionButton: customFloatingButton(
                onpress: () {},
                child: Transform.scale(
                    scale: 1.7,
                    child: const customIcon(
                      iconname: Icons.search,
                      color: AppColor.colorwhite,
                    ))),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            drawer: const mydrawer()));
  }
}
