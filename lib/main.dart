import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Routes/route.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';



void main() {

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MIND ORDER',
    initialRoute: RoutesName.splashscreen,
    onGenerateRoute: Routes.generateRoute,
  ));
}
