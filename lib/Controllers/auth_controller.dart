import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:my_order/Firebase/firebasemethod.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/SellerScreen/Register/usertype.dart';

import '../Helper/basehelper.dart';
import '../view/BuyerScreen/register/location.dart';

class AuthController {
  static String? firstName,
      lastName,
      addresses,
      city,
      country,
      postCode,
      pinLoc,
      number;
  static String verificationId = '';
  static late Timer timer;
  static int maxsecond = 60;
  static Future logInAuth(context, String email, String password) async {
    BaseHelper.hideKeypad(context);
    BaseHelper.checkConnectivity().then((value) async {
      if (value == true) {
        EasyLoading.show();
        try {
          await BaseHelper.firebaseAuth
              .signInWithEmailAndPassword(email: email, password: password);
          await FirebaseMethod.getUserData();
          Navigator.of(context)
              .pushNamedAndRemoveUntil(RoutesName.usertype, (route) => false);
          EasyLoading.dismiss();

          return;
        } on FirebaseAuthException catch (e) {
          EasyLoading.dismiss();
          BaseHelper.showSnackBar(context, e.message);
        }

        EasyLoading.dismiss();
      } else {
        BaseHelper.showSnackBar(
          context,
          'No internet',
        );
      }
    });
  }

  Future forgetPassword(context, String email) async {
    BaseHelper.hideKeypad(context);
    EasyLoading.show();
    try {
      await BaseHelper.firebaseAuth.sendPasswordResetEmail(
        email: email,
        // actionCodeSettings: ActionCodeSettings(url: url)
      );
    } on FirebaseAuthException catch (e) {
      BaseHelper.showSnackBar(context, e.message);
    }
    EasyLoading.dismiss();
    BaseHelper.showSnackBar(
        context, 'Password Reset Email Sent Has been sent to"${email}"');

    return;
  }

  static Future signUp(context, String email, String password) async {
    User? user;
    BaseHelper.hideKeypad(context);
    EasyLoading.show();

    try {
      user = (await BaseHelper.firebaseAuth
              .createUserWithEmailAndPassword(email: email, password: password))
          .user;

      if (user != null) {
        print("created");
        var data = {
          "firstname": firstName,
          "lastname": lastName,
          "address": addresses,
          "city": city,
          "postcode": postCode,
          "country": country,
          "email": email,
          "password": password,
          "pinlocation": pinLoc,
          "phoneNumber": number,
          "type": type,
        };

        await FirebaseMethod.setUserData(data);
        await FirebaseMethod.getUserData();
        EasyLoading.dismiss();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const locations()));
        return user;
      } else {
        EasyLoading.dismiss();
        return null;
      }
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      BaseHelper.showSnackBar(context, e.message);
    }
    EasyLoading.dismiss();
    return null;
  }

  static verifyPhoneNumber(context) {
    BaseHelper.firebaseAuth.verifyPhoneNumber(
      phoneNumber: number,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (AuthCredential authCredential) async {
        BaseHelper.firebaseAuth.signInWithCredential(authCredential);
      },
      verificationFailed: (FirebaseAuthException e) async {
        EasyLoading.dismiss();

        /// this function is called when verification will failed
      },
      codeSent: (String verifId, [int? forceCodeResent]) {
        print(verifId);
        print(forceCodeResent);

        /// when otp code sent
        EasyLoading.dismiss();
        verificationId = verifId;
        onTimer();

        // Get.offAllNamed(VerificationCodeView.routeName);
      },
      codeAutoRetrievalTimeout: (String verId) {},
    );
  }

  static Future verifyOtp(context, String code) async {
    EasyLoading.show();
    final PhoneAuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: code);

    EasyLoading.dismiss();
    Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.homescreen, (route) => false);

    // _phoneLogin(context, authCredential, deviceToken, phone);
  }

  static void onTimer() {
    maxsecond = 60;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (maxsecond == 0) {
        timer.cancel();
        return;
      }
      maxsecond--;
    });
  }

  static Future logOut(context) async {
    EasyLoading.show();

    if (BaseHelper.firebaseAuth.currentUser?.providerData.first.providerId
            .toString() ==
        'google.com') {
      // await googleSignIn.disconnect();
      // await googleSignIn.signOut();
    }
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushNamedAndRemoveUntil(RoutesName.usertype, (route) => false);
    EasyLoading.dismiss();
    return;
  }
}
