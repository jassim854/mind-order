import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                            Navigator.pop(context);
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
                        width: 240,
                        child: const Text(
                          "Set Menu Icon",
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
      ],
    )));
  }
}
