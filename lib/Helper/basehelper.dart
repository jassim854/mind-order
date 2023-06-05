import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilis/constants/Colors/colors.dart';
import 'package:image_picker/image_picker.dart';

class BaseHelper {
  static hideKeypad(context) {
    FocusScope.of(context).unfocus();
  }
 static Future<bool> checkConnectivity() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }
  static showSnackBar(context, msg, {button}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      backgroundColor: AppColor.colorwhite,
      margin: const EdgeInsets.all(5),
      behavior: SnackBarBehavior.floating,
    ));
  }

  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static FirebaseAuth firebaseAuth = FirebaseAuth.instance;
static late  Map<String, dynamic> userData;
  static Future<File?> imagePickerSheet(context) {
    hideKeypad(context);
    late Future<File?> imageVar;
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context, ImageSource.camera);
                    },
                    horizontalTitleGap: 0,
                    title: const Text('Camera', style: TextStyle(fontSize: 18)),
                    leading:
                        const Icon(Icons.camera_alt, color: AppColor.colorred),
                  ),
                  ListTile(
                    horizontalTitleGap: 0,
                    onTap: () {
                      Navigator.pop(context, ImageSource.gallery);
                    },
                    title: const Text("Gallery",
                        style: TextStyle(
                          fontSize: 18,
                        )),
                    leading: Icon(Icons.image, color: AppColor.colorred),
                  ),
                ],
              ),
            ),
          );
        },
        elevation: 20.0,
        useRootNavigator: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ))).then((value) {
      if (value != null) {
        return imageVar = onCameraTap(context, value);
      }
      return imageVar;
    });
  }

  static Future<File?> onCameraTap(context, ImageSource source) {
    return ImagePicker.platform
        .getImageFromSource(source: source)
        .then((value) {
      if (value != null) {
        File imageVar = File(value.path);
        return imageVar;
      } else {
        BaseHelper.showSnackBar(context, 'Please Select any file');
      }
    });
  }
}
