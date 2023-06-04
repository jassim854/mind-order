import 'package:flutter/material.dart';

import '../../CartScreen/cart.dart';
import '../../SideMenu/Favourites/favouritefood.dart';
import '../../SideMenu/orderhistory/orderhistory1.dart';
import '../Homescreen/homeScreen.dart';
import 'japanesefood.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _selectedIndex = 2;

  final tabs = [
    const homeScreen(),
    const order1(),
    const JapaneseFood(),
    const Favourites(),
    const cartscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs[_selectedIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.search,
            color: Colors.white,
            size: 34,
          ),
          backgroundColor: Colors.red,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xffC6C6C6),
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(
            color: Colors.black,
          ),
          iconSize: 25,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_sharp,
                color: Colors.white,
              ),
              label: 'Notification',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Color(0xffC6C6C6),
              ),
              label: 'search',
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                label: 'Favourite'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.white,
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
