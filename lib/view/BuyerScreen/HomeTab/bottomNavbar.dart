import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/view/BuyerScreen/CartScreen/cart.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/Homescreen/searchbar.dart';

import '../SideMenu/Favourites/favouritefood.dart';
import '../SideMenu/orderhistory/orderhistory1.dart';
import 'Homescreen/homeScreen.dart';

class bottomNavbar extends StatefulWidget {
  const bottomNavbar({Key? key}) : super(key: key);

  @override
  State<bottomNavbar> createState() => _bottomNavbarState();
}

class _bottomNavbarState extends State<bottomNavbar> {
  int _selectedIndex = 0;

  final tabs = [
    homeScreen(),
    order1(),
    search(),
    Favourites(),
    cartscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs[_selectedIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 34,
          ),
          backgroundColor: Colors.red,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.bottomNavColor,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
              icon:
                  customIcon(iconname: Icons.home, color: AppColor.colorwhite),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: customIcon(
                iconname: Icons.notifications_sharp,
                color: AppColor.colorwhite,
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: customIcon(
                iconname: Icons.search,
                color: AppColor.bottomNavColor,
              ),
              label: 'search',
            ),
            BottomNavigationBarItem(
                icon: customIcon(
                  iconname: Icons.favorite,
                  color: AppColor.colorwhite,
                ),
                label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 3),
                      child: Transform.rotate(
                          angle: 1.5,
                          child: customIcon(
                            iconname: Icons.shopping_cart_sharp,
                            color: AppColor.colorwhite,
                          )),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        height: 10,
                        width: 10,
                        clipBehavior: Clip.none,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      ),
                    ),
                  ],
                ),
                label: 'Cart'),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
