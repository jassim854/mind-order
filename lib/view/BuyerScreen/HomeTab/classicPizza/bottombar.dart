import 'package:flutter/material.dart';

import '../../CartScreen/cart.dart';
import '../../SideMenu/foodshedule/FoodShedule.dart';

class bottombarr extends StatefulWidget {
  const bottombarr({Key? key}) : super(key: key);

  @override
  State<bottombarr> createState() => _bottombarrState();
}

class _bottombarrState extends State<bottombarr> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        width: 400,
        // color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 130,
                height: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 245, 245, 245),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            color: Colors.black,
                            onPressed: () {
                              setState(() {
                                if (value > 0) {
                                  value--;
                                }
                              });
                            },
                            icon: Icon(Icons.remove)),
                        Text(
                          "$value",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                            color: Colors.black,
                            onPressed: () {
                              setState(() {
                                value++;
                              });
                            },
                            icon: Icon(Icons.add))
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) => newmethod1(),
                    );
                  });
                },
                child: Container(
                  width: 185,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      ImageIcon(
                        AssetImage("assets/images/lock.png"),
                        color: Colors.white,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class newmethod1 extends StatefulWidget {
  const newmethod1({Key? key}) : super(key: key);

  @override
  State<newmethod1> createState() => _newmethodState();
}

class _newmethodState extends State<newmethod1> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 250,
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Thank you for\nyour order",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  " You can see your order in Cart Section\nOr\nYou can also shedule this food fo whole week",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 67, 65, 65),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9))),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => cartscreen(),
                                  ));
                            });
                          },
                          child: Text(
                            "Cart",
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 67, 65, 65),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9))),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => foodshedule(),
                                  ));
                            });
                          },
                          child: Text(
                            "Food Shedule",
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 220,
            child: Container(
                width: 60,
                height: 60,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 45,
                  shadows: [
                    Shadow(color: Colors.white, offset: Offset(0, 2.7))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
