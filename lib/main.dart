import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    builder: EasyLoading.init(
      builder: (context, child) {
        EasyLoading.instance
          ..indicatorType = EasyLoadingIndicatorType.ring
          ..loadingStyle = EasyLoadingStyle.custom
          ..indicatorSize = 40
          ..radius = 10
          ..textColor=AppColor.splashbackgroundcolor
          ..backgroundColor = AppColor.colorwhite
          ..indicatorColor = AppColor.splashbackgroundcolor
          ..maskColor = AppColor.colorblack
          ..userInteractions = false
          ..dismissOnTap = false;

        return Container(
          child: child,
        );
      },
    ),
    debugShowCheckedModeBanner: false,
    title: 'MIND ORDER',
    initialRoute: RoutesName.splashscreen,
    onGenerateRoute: Routes.generateRoute,
  ));
}
