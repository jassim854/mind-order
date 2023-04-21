import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/customOrderHistoryWidget.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/orderhistory/RatingComentDialog.dart';

import '../../../../utilis/constants/Colors/colors.dart';

class PastTabView extends StatefulWidget {
  const PastTabView({Key? key}) : super(key: key);

  @override
  State<PastTabView> createState() => _PastTabViewState();
}

class _PastTabViewState extends State<PastTabView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        if (index.isEven) {
          return Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Container(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.scaffoldcolor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 12)
                  ]),
              height: 270,
              width: double.infinity,
              child: CustomOrderWidget(
                  pastTabView: true,
                  heartRating: (rate) {},
                  onRated: (rate) {
                    Timer(
                        const Duration(milliseconds: 150),
                        () => showDialog(
                            context: context,
                            builder: (context) => const RatingCommentDialog()));
                  },
                  headertext: 'Beef Burger',
                  text1: "Drink",
                  text2: "Coke",
                  text3: "Cheese",
                  text4: "yes"),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Container(
                width: double.infinity,
                height: 540,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.scaffoldcolor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 12)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: Column(
                    children: [
                      CustomOrderWidget(
                        pastTabView: true,
                        heartRating: (rate) {},
                        onRated: (rate) {
                          Timer(
                              const Duration(milliseconds: 150),
                              () => showDialog(
                                  context: context,
                                  builder: (context) => const RatingCommentDialog()));
                        },
                        headertext: "Alfredo Pasta",
                        text1: 'Drink',
                        text2: 'Coke',
                        text3: 'Cheese',
                        text4: 'yes',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 50, right: 50, top: 15, bottom: 15),
                        child: Divider(
                          color: AppColor.splashbackgroundcolor,
                          thickness: 3,
                        ),
                      ),
                      CustomOrderWidget(
                        pastTabView: true,
                        heartRating: (rate) {},
                        onRated: (rate) {
                          Timer(
                              const Duration(milliseconds: 150),
                              () => showDialog(
                                  context: context,
                                  builder: (context) => const RatingCommentDialog()));
                        },
                        headertext: "Alfredo Pasta",
                        text1: 'Drink',
                        text2: 'Coke',
                        text3: 'Cheese',
                        text4: 'yes',
                      ),
                    ],
                  ),
                )),
          );
        }
      },
    );
  }
}
