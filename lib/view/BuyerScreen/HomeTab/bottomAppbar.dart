import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/Homescreen/homeScreen.dart';

import '../../../utilis/components/customwidgets/customIcon.dart';
import '../../../utilis/constants/Colors/colors.dart';

class bottomAppbar extends StatelessWidget {
  const bottomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Placeholder = Opacity(
        opacity: 0.0,
        child: IconButton(
            onPressed: () {}, icon: const Icon(Icons.search_off_rounded)));
    return BottomAppBar(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: AppColor.bottomNavColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            iconitem(
              index: 0,
              icon:
                  customIcon(iconname: Icons.home, color: AppColor.colorwhite),
            ),
            iconitem(
              index: 1,
              icon: customIcon(
                iconname: Icons.notifications_sharp,
                color: AppColor.colorwhite,
              ),
            ),
            Placeholder,
            iconitem(
              index: 2,
              icon: customIcon(
                iconname: Icons.favorite,
                color: AppColor.colorwhite,
              ),
            ),
            iconitem(
              index: 3,
              icon: customIcon(
                iconname: Icons.shopping_cart_sharp,
                color: AppColor.colorwhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class iconitem extends StatelessWidget {
  final index, icon;
  const iconitem({
    Key? key,
    required this.index,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      // focusColor: Colors.green,
      onPressed: () {
        if (index == 0) {
          Navigator.pushNamed(context, RoutesName.homescreen);
        } else if (index == 1) {
          Navigator.pushNamed(context, RoutesName.orderHistory);
        } else if (index == 2) {
          Navigator.pushNamed(context, RoutesName.Favourite);
        } else if (index == 3) {
          Navigator.pushNamed(context, RoutesName.Cart);
        }
      },
      icon: icon,
      iconSize: 30,
    ));
  }
}
