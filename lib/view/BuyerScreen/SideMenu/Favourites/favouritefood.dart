import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/customOrderHistoryWidget.dart';

import '../../../../utilis/components/Customscreen/header.dart';
import '../../../../utilis/components/customwidgets/customIcon.dart';
import '../../../../utilis/components/customwidgets/customfloatingbutton.dart';
import '../../../../utilis/components/customwidgets/customtextwidget.dart';
import '../../../../utilis/constants/Colors/colors.dart';
import '../../HomeTab/bottomAppbar.dart';
import '../../HomeTab/classicPizza/classicPizza.dart';
import '../../HomeTab/drawerScreen/drawerscreen.dart';

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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30),
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
                              child: Stack(children: [
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
                                    items: [
                                      PopupMenuItem(
                                        child: customText(text: "Coke"),
                                        value: 0,
                                      ),
                                      PopupMenuItem(
                                        child: customText(text: "Spirite"),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: customText(text: "Marinda"),
                                        value: 2,
                                      ),
                                    ],
                                    onselected: (val) {
                                      setState(() {
                                        if (val == 0) {
                                          setState(() {
                                            sizetext = 'Coke';
                                          });
                                        } else if (val == 1) {
                                          setState(() {
                                            sizetext = 'Spirite';
                                          });
                                        } else if (val == 2) {
                                          setState(() {
                                            sizetext = 'Marinda';
                                          });

                                        }
                                      });
                                    },
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
