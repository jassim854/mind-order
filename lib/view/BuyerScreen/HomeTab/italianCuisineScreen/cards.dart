import 'package:flutter/material.dart';

import '../addressScreen/AddreesScreen.dart';

class ListviewCard extends StatefulWidget {
  const ListviewCard({Key? key}) : super(key: key);

  @override
  State<ListviewCard> createState() => _ListviewCardState();
}

class _ListviewCardState extends State<ListviewCard> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return cards();
      },
      itemCount: 10,
    );
  }

  cards() {
    return Container(
      child: Column(children: [
        Container(
          width: 360,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: NetworkImage(
                "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80",
              ),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => kimsAddress()));
                  }),
                  child: Container(
                    width: 200,
                    height: 100,
                    // color: Colors.green,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // padding: EdgeInsets.only(bottom: 0, left: 0),
                            Text(
                              "Andreas Coffee",
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),

                            Text(
                              "4.2 km",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "4280 Steps",
                              style: TextStyle(fontSize: 20),
                            ),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40, bottom: 25),
                  child: Container(
                    // color: Colors.blue,
                    width: 200,
                    height: 100,
                    // color: Colors.blue,

                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // padding: EdgeInsets.only(bottom: 0, left: 0),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: EdgeInsets.only(right: 7, top: 0),
                                child: Row(children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text("★",
                                        style: const TextStyle(
                                            fontSize: 32, color: Colors.yellow),
                                        textAlign: TextAlign.justify),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ]),
                              ),
                            ),

                            Text(
                              "10 am- 7pm",
                              style: TextStyle(fontSize: 20),
                            ),
                          ]),
                    ),
                  ),
                )
              ]),
        ),
      ]),
    );
  }
}
