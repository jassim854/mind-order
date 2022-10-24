import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Routes/route.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MIND ORDER',
    initialRoute: RoutesName.JapaneseFood,
    onGenerateRoute: Routes.generateRoute,
  ));
}
