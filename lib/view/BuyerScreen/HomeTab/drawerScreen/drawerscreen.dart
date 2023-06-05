import 'package:flutter/material.dart';
import 'package:my_order/Controllers/auth_controller.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), bottomRight: Radius.circular(50))),
      backgroundColor: AppColor.textfieldcolorgrey,
      width: 290,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: AppColor.colorgrey,
                  radius: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: customText(
                    text: "Jx Zx",
                    weight: FontWeight.bold,
                    size: 19,
                    textColor: AppColor.colorblack,
                  ),
                ),
              ],
            ),
          ),
          CustomListtileIconText(
            icon: images.drawerIcons,
            text: 'home',
            onclick: () {
              Navigator.pushNamed(context, RoutesName.homescreen);
            },
            home: true,
          ),
          CustomListtileIconText(
            icon: images.drawerIcon1,
            text: 'Order History',
            onclick: () {
              Navigator.pushNamed(context, RoutesName.orderHistory);
            },
          ),
          const Divider(
            color: AppColor.drawericonColor,
            thickness: 1.0,
          ),
          CustomListtileIconText(
            icon: images.drawerIcon2,
            text: 'Payment Methods',
            onclick: () {
              Navigator.pushNamed(context, RoutesName.paymentmethod);
            },
          ),
          const Divider(
            color: AppColor.drawericonColor,
            thickness: 1.0,
          ),
          CustomListtileIconText(
            icon: images.drawerIcon3,
            text: 'FAQS',
            onclick: () {},
          ),
          CustomListtileIconText(
            icon: images.drawerIcon4,
            text: 'Support',
            onclick: () {},
          ),
          const Divider(
            color: AppColor.drawericonColor,
            thickness: 1.0,
          ),
          CustomListtileIconText(
            icon: images.drawerIcon5,
            text: 'Settings',
            onclick: () {
              Navigator.pushNamed(context, RoutesName.settings);
            },
          ),
          CustomListtileIconText(
            icon: images.drawerIcon6,
            text: 'Logout',
            onclick: () {
              AuthController.logOut(context);
            },
          ),
        ],
      ),
    );
  }
}

class CustomListtileIconText extends StatelessWidget {
  final icon, onclick, text;
  final bool? home;
  const CustomListtileIconText(
      {Key? key, this.icon, this.onclick, this.text, this.home})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: Transform.scale(
          scale: 1.3,
          child: customImageIcon(
              img: icon,
              color: home == true
                  ? AppColor.splashbackgroundcolor
                  : AppColor.drawericonColor),
        ),
        title: Align(
            alignment: const Alignment(-1.1, 0),
            child: customText(
              text: text,
              size: 19,
              weight: FontWeight.w600,
              textColor: AppColor.headertextcolor,
            )),
        onTap: onclick,
      ),
    );
  }
}
