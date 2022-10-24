import 'package:flutter/material.dart';

import '../drawerScreen/drawerscreen.dart';
import '../bottomAppbar.dart';

class japanesecart extends StatelessWidget {
  const japanesecart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        shadowColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Image.asset("assets/images/logo.png"),
        ]),

        backgroundColor: Colors.white,
        // bottomOpacity: 0,
        elevation: 0,
      ),
      drawer: mydrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 380,
            height: 100,
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.orange,
                  child: const Padding(
                    padding: EdgeInsets.all(17.0),
                    child: const Text(
                      "Kim's",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 380,
                  color: Colors.blue,
                  child: Text("Japanese Food",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.merge(const TextStyle(color: Colors.red))),
                ),
              ],
            ),
          ),
          Container(
            height: 138,
            width: 380,
            color: Colors.red,
            child: Column(
              children: [
                Container(
                  width: 380,
                  height: 30,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      "Curry",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 380,
                  height: 100,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "Begin your meal with our \nlow on calories yummy curries!\n Explore the whole range",
                      style: const TextStyle(color: Colors.red, fontSize: 17),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
              child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Center(
                child: Container(width: 350, height: 1000, child: gridview())),
          ))
        ],
      ),
      bottomNavigationBar: const bottomAppbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search, size: 34),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

Widget gridview() {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, crossAxisSpacing: 25, mainAxisSpacing: 40),
    itemBuilder: (context, index) {
      return GridTile(
        child: Container(
            width: 40,
            height: 90,
            child: Image.network(
                "https://purepng.com/public/uploads/large/purepng.com-fast-food-burgerburgerfast-foodhammeatfast-food-burgermc-donaldsburger-king-231519340212qzreu.png")),
        footer: Padding(
          padding: const EdgeInsets.only(left: 35, top: 40),
          child: const Text("£ 20"),
        ),
      );
    },
    itemCount: 22,
  );
}
