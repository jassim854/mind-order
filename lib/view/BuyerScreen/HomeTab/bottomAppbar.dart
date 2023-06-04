import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';

import '../../../utilis/components/customwidgets/customIcon.dart';
import '../../../utilis/constants/Colors/colors.dart';

var ind;

class bottomAppbar extends StatefulWidget {
  const bottomAppbar({Key? key}) : super(key: key);

  @override
  State<bottomAppbar> createState() => _bottomAppbarState();
}

class _bottomAppbarState extends State<bottomAppbar> {
  @override
  Widget build(BuildContext context) {
    final Placeholder = Opacity(
        opacity: 0.0,
        child: IconButton(
            onPressed: () {}, icon: const Icon(Icons.search_off_rounded)));
    return BottomAppBar(
      color: Colors.transparent,
      child: Container(
        height: 55,
        decoration: const BoxDecoration(
            color: AppColor.bottomNavColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            iconitem(
              onpressed: () {
                print('home');
                setState(() {
                  ind = 0;
                });
                if (ind == 0) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RoutesName.homescreen, (RoutesName) => false);
                }
              },
              ind: ind,
              icon: customIcon(
                  iconname: Icons.home,
                  color: ind == 0 ? AppColor.colorYellow : AppColor.colorwhite),
            ),
            iconitem(
              onpressed: () {
                setState(() {
                  ind = 1;
                });
                if (ind == 1) {
                  Navigator.pushNamed(context, RoutesName.orderHistory);
                }
              },
              ind: ind,
              icon: customIcon(
                iconname: Icons.notifications_sharp,
                color: ind == 1 ? AppColor.colorYellow : AppColor.colorwhite,
              ),
            ),
            Placeholder,
            iconitem(
              onpressed: () {
                setState(() {
                  ind = 2;
                });
                if (ind == 2) {
                  Navigator.pushNamed(context, RoutesName.Favourite);
                }
              },
              ind: ind,
              icon: customIcon(
                iconname: Icons.favorite,
                color: ind == 2 ? AppColor.colorYellow : AppColor.colorwhite,
              ),
            ),
            iconitem(
              onpressed: () {
                setState(() {
                  ind = 3;
                });
                if (ind == 3) {
                  Navigator.pushNamed(context, RoutesName.cart);
                }
              },
              ind: ind,
              icon: customIcon(
                iconname: Icons.shopping_cart_sharp,
                color: ind == 3 ? AppColor.colorYellow : AppColor.colorwhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class iconitem extends StatelessWidget {
  final ind;

  final icon, onpressed;
  iconitem({
    Key? key,
    required this.icon,
    this.ind,
    this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      // focusColor: Colors.green,
      onPressed: onpressed,
      icon: icon,
      iconSize: 30,
    );
  }
}
