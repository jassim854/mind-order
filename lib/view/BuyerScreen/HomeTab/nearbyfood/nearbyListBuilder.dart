import 'package:flutter/material.dart';

import '../../../../utilis/components/customwidgets/customtextwidget.dart';
import '../../../../utilis/constants/Colors/colors.dart';

class nearbyfoodlistviewBuilder extends StatelessWidget {
  const nearbyfoodlistviewBuilder({
    Key? key,
    required ScrollController? scrollController,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController? _scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemBuilder: (BuildContext context, index) {
        return Container(
          child: Column(children: [
            GestureDetector(
              onTap: (() {}),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Container(
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Container(
                child: Column(children: [
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // padding: EdgeInsets.only(bottom: 0, left: 0),
                          customText(
                            text: "Andreas Coffee",
                            weight: FontWeight.bold,
                            size: 18,
                            textColor: AppColor.headertextcolor,
                          ),
                          Container(
                            child: Row(children: [
                              Container(
                                child: FittedBox(
                                  child: customText(
                                    text: '★',
                                    textColor: AppColor.colorYellow,
                                    weight: FontWeight.w800,
                                    size: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: FittedBox(
                                  child: customText(
                                    text: "4.8",
                                    size: 14,
                                    weight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText(
                          text: "4.2 km",
                          size: 12,
                          weight: FontWeight.w600,
                          textColor: AppColor.lightgreyTextcolor,
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: customText(
                              text: "Open 10 am- 7pm",
                              size: 14,
                              textColor: AppColor.headertextcolor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      customText(
                        text: "4280 Steps",
                        size: 12,
                        weight: FontWeight.w600,
                        textColor: AppColor.lightgreyTextcolor,
                      )
                    ],
                  )
                ]),
              ),
            ),
          ]),
        );
      },
      itemCount: 10,
    );
  }
}
