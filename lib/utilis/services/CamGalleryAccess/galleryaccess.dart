import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

var imageFile;
// ignore: unnecessary_question_mark
dynamic? classn;

class CamGall extends StatefulWidget {
  dynamic classname;

  CamGall(BuildContext context, {required this.classname}) {
    classn = classname;
  }

  @override
  State<CamGall> createState() => _CamGallState();
}

class _CamGallState extends State<CamGall> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 170,
        child: Column(
          children: [
            Container(
              width: 140,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {
                    _getFromGallery();
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 3, 0, 196),
                          Color.fromARGB(255, 10, 133, 255)
                        ]),
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Gallery",
                        style: TextStyle(
                            fontSize: 24, fontStyle: FontStyle.italic),
                      ),
                    ),
                  )),
            ),
            Container(
              child: Text(
                "OR",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              width: 140,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {
                    _getFromCamera();
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 3, 0, 196),
                          Color.fromARGB(255, 10, 133, 255)
                        ]),
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Camera",
                        style: TextStyle(
                            fontSize: 24, fontStyle: FontStyle.italic),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() async {
        imageFile = File(pickedFile.path);
        Navigator.push(context, MaterialPageRoute(builder: (context) => classn))
            .then((value) {
          setState(() {});
        });
      });
    }
  }

  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        true;
        imageFile = File(pickedFile.path);
        Navigator.push(context, MaterialPageRoute(builder: (context) => classn))
            .then((value) {
          setState(() {});
        });
      });
    }
  }
}
