import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Routes/route.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main()async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MIND ORDER',
    initialRoute: RoutesName.splashscreen,
    onGenerateRoute: Routes.generateRoute,
  ));
}
