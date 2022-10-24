import 'package:flutter/material.dart';

bool value = false,
    value1 = false,
    value2 = false,
    value3 = false,
    value4 = false,
    value5 = false,
    value6 = false,
    value7 = false,
    value8 = false,
    value9 = false,
    value10 = false,
    value11 = false;

class dialogbox extends StatefulWidget {
  const dialogbox({Key? key}) : super(key: key);

  @override
  State<dialogbox> createState() => _dialogboxState();
}

class _dialogboxState extends State<dialogbox> {
  int _selectedvalue = 0;
  bool press = false;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        Container(
          width: 311,
          height: 415,
          // color: Colors.blue,
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          width: 100,
                          // color: Colors.yellow,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Add-ons',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'Pepperoni',
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Sausage',
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Olives',
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'Sauces',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'BBQ',
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Ranch',
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Garlic',
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'Drinks',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'Coke',
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Spirite ',
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 26,
                                ),
                                Text(
                                  '7 up',
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 27,
                                ),
                                Text(
                                  'Mojito',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 80,
                            height: 600,
                            // color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    'Single',
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Center(
                                    child: Container(
                                      width: 40,
                                      height: 37,
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            value = !value;
                                          });
                                        },
                                        style: TextButton.styleFrom(
                                            minimumSize: Size(0, 0),
                                            backgroundColor: value
                                                ? Colors.yellow
                                                : Colors.white),
                                        child: Text(
                                          '£ 0',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    width: 40,
                                    height: 37,
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          value1 = !value1;
                                          print('yesss$value1');
                                        });
                                      },
                                      style: TextButton.styleFrom(
                                          minimumSize: Size(0, 0),
                                          backgroundColor: value1
                                              ? Colors.yellow
                                              : Colors.white),
                                      child: Text(
                                        '£ 0',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    width: 40,
                                    height: 37,
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          value2 = !value2;
                                        });
                                      },
                                      style: TextButton.styleFrom(
                                          minimumSize: Size(0, 0),
                                          backgroundColor: value2
                                              ? Colors.yellow
                                              : Colors.white),
                                      child: Text(
                                        '£ 0',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Center(
                                  child: Text(
                                    'Single',
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Center(
                                    child: Container(
                                      width: 40,
                                      height: 37,
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            value3 = !value3;
                                            print('yesss$value3');
                                          });
                                        },
                                        style: TextButton.styleFrom(
                                            minimumSize: Size(0, 0),
                                            backgroundColor: value3
                                                ? Colors.yellow
                                                : Colors.white),
                                        child: Text(
                                          '£ 0',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Center(
                                  child: Container(
                                    width: 40,
                                    height: 37,
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          value4 = !value4;
                                          print('yesss$value4');
                                        });
                                      },
                                      style: TextButton.styleFrom(
                                          minimumSize: Size(0, 0),
                                          backgroundColor: value4
                                              ? Colors.yellow
                                              : Colors.white),
                                      child: Text(
                                        '£ 0',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Center(
                                  child: Container(
                                    width: 40,
                                    height: 37,
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          value5 = !value5;
                                        });
                                      },
                                      style: TextButton.styleFrom(
                                        minimumSize: Size(0, 0),
                                        backgroundColor: value5
                                            ? Colors.yellow
                                            : Colors.white,
                                      ),
                                      child: Text(
                                        '£ 0',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Container(
                                width: 72,
                                height: 319,
                                // color: Colors.red,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text(
                                        'Double',
                                        style: TextStyle(
                                            // fontWeight:
                                            //     FontWeight
                                            //         .bold,
                                            fontSize: 19),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Center(
                                        child: Container(
                                          width: 40,
                                          height: 37,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                value6 = !value6;
                                                print('yesss$value6');
                                              });
                                            },
                                            style: TextButton.styleFrom(
                                                minimumSize: Size(0, 0),
                                                backgroundColor: value6
                                                    ? Colors.yellow
                                                    : Colors.white),
                                            child: Text(
                                              '£ 0',
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 40,
                                        height: 37,
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              value7 = !value7;
                                              print('yesss$value7');
                                            });
                                          },
                                          style: TextButton.styleFrom(
                                              minimumSize: Size(0, 0),
                                              backgroundColor: value7
                                                  ? Colors.yellow
                                                  : Colors.white),
                                          child: Text(
                                            '£ 0',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 40,
                                        height: 37,
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              value8 = !value8;
                                              print('yesss$value8');
                                            });
                                          },
                                          style: TextButton.styleFrom(
                                              minimumSize: Size(0, 0),
                                              backgroundColor: value8
                                                  ? Colors.yellow
                                                  : Colors.white),
                                          child: Text(
                                            '£ 0',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Center(
                                      child: Text(
                                        'Double',
                                        style: TextStyle(fontSize: 19),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Center(
                                        child: Container(
                                          width: 40,
                                          height: 37,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                value9 = !value9;
                                                print('yesss$value9');
                                              });
                                            },
                                            style: TextButton.styleFrom(
                                                minimumSize: Size(0, 0),
                                                backgroundColor: value9
                                                    ? Colors.yellow
                                                    : Colors.white),
                                            child: Text(
                                              '£ 0',
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0,
                                    ),
                                    Center(
                                      child: Container(
                                        width: 40,
                                        height: 37,
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              value10 = !value10;
                                              print('yesss$value10');
                                            });
                                          },
                                          style: TextButton.styleFrom(
                                              minimumSize: Size(0, 0),
                                              backgroundColor: value10
                                                  ? Colors.yellow
                                                  : Colors.white),
                                          child: Text(
                                            '£ 0',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0,
                                    ),
                                    Center(
                                      child: Container(
                                        width: 40,
                                        height: 37,
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              value11 = !value11;
                                              print('yesss$value11');
                                            });
                                          },
                                          style: TextButton.styleFrom(
                                              minimumSize: Size(0, 0),
                                              backgroundColor: value11
                                                  ? Colors.yellow
                                                  : Colors.white),
                                          child: Text(
                                            '£ 0',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 47),
                                child: Container(
                                  width: 86,
                                  height: 192,
                                  // color: Colors.yellow,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 86,
                                        child: Row(children: [
                                          Text(
                                            '£ 0',
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Radio<int>(
                                              value: 1,
                                              groupValue: _selectedvalue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedvalue = value!;
                                                });
                                              })
                                        ]),
                                      ),
                                      Container(
                                        width: 86,
                                        child: Row(children: [
                                          Text(
                                            '£ 0',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          Radio<int>(
                                              value: 2,
                                              groupValue: _selectedvalue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedvalue = 2;
                                                });
                                              })
                                        ]),
                                      ),
                                      Container(
                                        width: 86,
                                        child: Row(children: [
                                          Text(
                                            '£ 0',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          Radio<int>(
                                              value: 3,
                                              groupValue: _selectedvalue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedvalue = 3;
                                                });
                                              })
                                        ]),
                                      ),
                                      Container(
                                        width: 86,
                                        child: Row(children: [
                                          Text(
                                            '£ 0',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          Radio<int>(
                                              value: 4,
                                              groupValue: _selectedvalue,
                                              onChanged: (aa) {
                                                setState(() {
                                                  _selectedvalue = 4;
                                                });
                                              })
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 370,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Total £10",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: InkWell(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          enableFeedback: true,
                          animationDuration: Duration(minutes: 2)),
                      onPressed: () {
                        setState(() {
                          press = !press;
                        });
                      },
                      child: press
                          ? Transform.scale(
                              scale: 1.5,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.check_circle_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : Text("Add to Cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20))),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
