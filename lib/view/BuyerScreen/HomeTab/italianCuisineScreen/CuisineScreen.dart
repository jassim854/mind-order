import 'package:flutter/material.dart';

import '../Homescreen/homeScreen.dart';
import 'cards.dart';

class CuisineScreen extends StatelessWidget {
  const CuisineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffffffff),
            body: ListView(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 37,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
                  Container(
                    child: ImageIcon(
                      AssetImage("assets/images/logo.png"),
                      color: Colors.red,
                      size: 70,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 28, right: 28, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Search",
                      hintStyle: const TextStyle(fontSize: 19),
                      fillColor: const Color.fromARGB(15, 158, 158, 158),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 45,
                        color: Colors.grey,
                      ),
                      suffixIcon: popup(context)),
                ),
              ),
              Row(children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Text("Italian Cuisine",
                      style: Theme.of(context).textTheme.headline4?.merge(
                          const TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w600))),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "(2 chains)",
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            letterSpacing: 1.1,
                            color: Color.fromARGB(255, 158, 158, 158),
                            fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                IconButton(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(left: 27),
                    onPressed: () {},
                    icon: const ImageIcon(AssetImage("assets/images/Icon.png")))
              ]),
              Container(height: 520, child: ListviewCard())
            ])));
  }
}

popup(BuildContext context) {
  return PopupMenuButton(
      onSelected: ((value) {
        if (value == 0) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => homeScreen()));
        } else if (value == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CuisineScreen()));
        }
      }),
      icon: ImageIcon(AssetImage("assets/images/icon1.png")),
      itemBuilder: (context) => [
            PopupMenuItem(
              child: Text("Price"),
              value: 0,
            ),
            PopupMenuItem(
              child: Text("Distance"),
              value: 1,
            ),
            PopupMenuItem(
              child: Text("timee"),
              value: 2,
            ),
            PopupMenuItem(
              child: Text("Vlog"),
              value: 3,
            ),
            PopupMenuItem(
              child: Text("Resturnats"),
              value: 4,
            )
          ]);
}
