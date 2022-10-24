import 'package:flutter/material.dart';

import '../../SideMenu/PaymentMethod/paymentmethod.dart';
import '../../SideMenu/Settings/Settings.dart';
import '../../SideMenu/orderhistory/bottombar.dart';
import '../bottomNavbar.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // ignore: sort_child_properties_last
      child: Material(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 32,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 10),
                    child: Text("Jx Zx"),
                  ),
                ],
              ),
            ),
            drawerIcons(
                icon: AssetImage("assets/images/drawericon.png"),
                text: "home",
                onclick: () {
                  selecteditem(context, 0);
                }),
            SizedBox(
              height: 10,
            ),
            drawerIcons(
                icon: AssetImage("assets/images/drawericon1.png"),
                text: "Order Hstory",
                onclick: () {
                  selecteditem(context, 1);
                }),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            SizedBox(
              height: 10,
            ),
            drawerIcons(
                icon: AssetImage("assets/images/drawericon2.png"),
                text: "Payments Method",
                onclick: () {
                  selecteditem(context, 2);
                }),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            drawerIcons(
                icon: AssetImage("assets/images/drawericon3.png"),
                text: "FAQS",
                onclick: () {
                  selecteditem(context, 0);
                }),
            SizedBox(
              height: 10,
            ),
            drawerIcons(
                icon: AssetImage("assets/images/drawericon4.png"),
                text: "Support",
                onclick: () {
                  selecteditem(context, 0);
                }),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            SizedBox(
              height: 10,
            ),
            drawerIcons(
                icon: AssetImage("assets/images/drawericon5.png"),
                text: "Settings",
                onclick: () {
                  selecteditem(context, 4);
                }),
            SizedBox(
              height: 10,
            ),
            drawerIcons(
                icon: AssetImage("assets/images/drawericon6.png"),
                text: "Logout",
                onclick: () {
                  selecteditem(context, 0);
                }),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

Widget drawerIcons({
  required ImageProvider icon,
  required String text,
  required VoidCallback? onclick,
}) {
  return ListTile(
    leading: ImageIcon(
      icon,
      color: Colors.red,
      size: 34,
    ),
    title: Align(
      alignment: Alignment(-1.1, 0),
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    ),
    onTap: onclick,
  );
}

void selecteditem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => bottomNavbar()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => bottomorderbar()));
      break;
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => paymentmethods()));
      break;
    case 4:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => settings()));
      break;
  }
}
