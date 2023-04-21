import 'package:flutter/material.dart';

import '../../../utilis/services/CamGalleryAccess/galleryaccess.dart';
import 'addcategory.dart';

class imageupload extends StatefulWidget {
  const imageupload({Key? key}) : super(key: key);

  @override
  State<imageupload> createState() => _imageuploadState();
}

class _imageuploadState extends State<imageupload> {
  dismissdialog() {
    if (dcontext != null) {
      Navigator.pop(dcontext);
    }
  }

  var imgcon = 0;
  @override
  var slidevalue = 1.0;
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: 130,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(builder: (context) {
                      return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, top: 20),
                            child: const ImageIcon(
                              AssetImage(
                                "assets/accicons/drawericon.png",
                              ),
                              size: 37,
                            ),
                          ));
                    }),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: const Color(0xffFC4747),
                            borderRadius: BorderRadius.circular(12)),
                        child: Transform.scale(
                          scale: 0.6,
                          child: const Image(
                            image: AssetImage(
                                "assets/accicons/sellerlogo.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Transform.scale(
                        scale: 1.8,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const addcategory(),
                                    ));
                              });
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_left,
                            )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          child: const Text(
                            "Image Upload",
                            style: TextStyle(
                                fontSize: 34,
                                color: Color(0xff40484E),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(children: [
            Expanded(
              child: Center(
                child: imageFile != null
                    ? Container(
                        width: 320,
                        height: 190,
                        color: Colors.grey,
                        child: InteractiveViewer(
                          child: Image.file(
                            imageFile,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    : Container(
                        width: 320,
                        height: 190,
                        color: Colors.grey,
                      ),
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Transform.translate(
            offset: const Offset(0, -5),
            child: Center(
              child: SizedBox(
                height: 20,
                width: 130,
                child: const Text(
                  "Pinch to Zoom",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: const FittedBox(
              child: Text(
                "Photo Upload Guidelines",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: const FittedBox(
              fit: BoxFit.fill,
              child: Text(
                "The image can't be blurry, it can't\ninclude text or logo and there\nshould be space around the food.",
                textAlign: TextAlign.justify,
                textScaleFactor: 1.1,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  print("clicked");
                  imageFile = null;
                });
              },
              child: Transform.scale(
                  scale: 2, child: const Icon(Icons.highlight_remove_rounded)),
            ),
          ),
        ],
      ),
    ));
  }
}
