import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/orderhistory/CurrentTab.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/orderhistory/PastTab.dart';

import '../../../../utilis/components/customwidgets/customIcon.dart';
import '../../../../utilis/components/customwidgets/customfloatingbutton.dart';
import '../../../../utilis/constants/Colors/colors.dart';
import '../../HomeTab/bottomAppbar.dart';
import '../../HomeTab/classicPizza/classicPizza.dart';
import '../../HomeTab/drawerScreen/drawerscreen.dart';

class order1 extends StatefulWidget {
  const order1({Key? key}) : super(key: key);

  @override
  State<order1> createState() => _order1State();
}

class _order1State extends State<order1> with SingleTickerProviderStateMixin {
  TabController? _tabbarController;
  @override
  void initState() {
    // TODO: implement initState
    _tabbarController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.scaffoldcolor2,
            body: Container(
                width: double.infinity,
                child: Column(children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColor.scaffoldcolor,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 3,
                              blurRadius: 20)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const customhomeLogo(
                            backarrow: false, centerText: false),
                        const customhomeLogo(
                            backarrow: true,
                            centerText: true,
                            text: "Order History",
                            orderHistoryPage: true),
                        TabBar(
                          controller: _tabbarController,
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.red,
                          indicatorPadding:
                              const EdgeInsets.only(left: 45, right: 45),
                          indicatorWeight: 6,
                          indicatorColor: Colors.red,
                          padding: const EdgeInsets.only(
                            left: 90,
                            right: 55,
                          ),
                          tabs: [
                            customText(
                              text: "Current",
                              size: 20,
                              weight: FontWeight.bold,
                            ),
                            customText(
                              text: "Past",
                              size: 20,
                              weight: FontWeight.bold,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                    controller: _tabbarController,
                    children: [
                      const CurrentTaBView(),
                      const PastTabView(),
                    ],
                  )),
                ])),
                bottomNavigationBar: bottomAppbar(),
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
