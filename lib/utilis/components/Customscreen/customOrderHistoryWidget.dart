import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/CustomClassicPizzaWidgets.dart';
import 'package:my_order/utilis/components/Customscreen/customColumnIconText.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';

import '../../constants/Colors/colors.dart';
import '../customwidgets/customtextwidget.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomOrderWidget extends StatelessWidget {
  final headertext,
      text1,
      text2,
      text3,
      text4,
      pastTabView,
      onRated,
      heartRating,
      favourite,
      onselected,
      items,
      indexEven;

  const CustomOrderWidget({
    Key? key,
    this.headertext,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.pastTabView,
    this.onRated,
    this.heartRating,
    this.favourite,
    this.onselected,
    this.items,
    this.indexEven,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(text: headertext),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.amber,
          child: CustomRowText_Text_Widget(
            text1: text1,
            text2: text2,
            favourite: favourite,
//             Sizeonselected: Sizeonselected,
//             Drinkitems: Drinkitems,
//             Drinkonselected: drinkOnselected,
// Sizeitems: sizeItems,
// switchValue: ,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        CustomRowText_Text_Widget(
          text1: text3,
          text2: text4,
          favourite: favourite,
          Sizeonselected: onselected,
        ),
        pastTabView == true
            ? RatingBar(
                initialRating: 3,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                ratingWidget: RatingWidget(
                    empty: const Icon(
                      Icons.star_border,
                      color: AppColor.colorYellow,
                    ),
                    full: const Icon(
                      Icons.star,
                      color: AppColor.colorYellow,
                    ),
                    half: const Icon(
                      Icons.star,
                      color: AppColor.colorYellow,
                    )),
                itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                onRatingUpdate: onRated)
            : Container(),
        Padding(
          padding: pastTabView == true
              ? const EdgeInsets.only(right: 0, top: 20)
              : const EdgeInsets.only(right: 150, top: 20),
          child: SizedBox(
            width: double.infinity,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                indexEven == true
                    ? Container()
                    : SizedBox(
                        width: 130,
                        child: customelevatedbutton(
                            padding: 14.0,
                            onpress: () {
                              pastTabView == true
                                  ? Navigator.pushNamed(
                                      context, RoutesName.classicpizza)
                                  : null;
                            },
                            child: customText(
                              text:
                                  pastTabView == true ? 'Order Again' : 'Track',
                              size: 16,
                              weight: FontWeight.bold,
                            ),
                            color: pastTabView == true
                                ? AppColor.splashbackgroundcolor
                                : AppColor.colorDarkYellow),
                      ),
                pastTabView == true
                    ? RatingBar(
                        initialRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 1,
                        ratingWidget: RatingWidget(
                          empty: const Icon(
                            Icons.favorite_border,
                            color: AppColor.splashbackgroundcolor,
                          ),
                          full: const Icon(
                            Icons.favorite,
                            color: AppColor.splashbackgroundcolor,
                          ),
                          half: const Icon(
                            Icons.favorite,
                            color: AppColor.splashbackgroundcolor,
                          ),
                        ),
                        itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                        onRatingUpdate: heartRating)
                    : Container()
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.text,
  }) : super(key: key);

  final text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customText(
          text: text,
          size: 18,
          weight: FontWeight.bold,
          textColor: AppColor.headertextcolor,
        ),
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(15)),
        ),
      ],
    );
  }
}

class CustomRowText_Text_Widget extends StatelessWidget {
  final text1,
      text2,
      favourite,
      Drinkonselected,
      Drinkitems,
      Sizeonselected,
      Sizeitems;
  late var switchValue;

  CustomRowText_Text_Widget({
    Key? key,
    this.text1,
    this.text2,
    this.favourite,
    this.switchValue,
    this.Drinkonselected,
    this.Drinkitems,
    this.Sizeonselected,
    this.Sizeitems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customText(
          text: text1,
          weight: FontWeight.w400,
          size: 17,
        ),
        text1 == 'Drink'
            ? CustomRowTextPopup(
                text: text2,
                onselected: Drinkonselected,
                items: Drinkitems,
              )
            : text1 == 'Size'
                ? CustomRowTextPopup(
                    text: text2,
                    onselected: Sizeonselected,
                    items: Sizeitems,
                  )
                :   text1 == 'Cheese'?  CustomSwitch(
                    onChanged: (valu) {
                      switchValue = valu;
                    },
                    value: switchValue,
                  ): customText(
                    text: text2,
                    weight: FontWeight.w400,
                    textColor: AppColor.lightgreyTextcolor,
                  )
      ],
    );
  }
}
