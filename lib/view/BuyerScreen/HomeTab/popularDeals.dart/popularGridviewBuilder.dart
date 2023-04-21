import 'package:flutter/material.dart';

import '../../../../utilis/components/customwidgets/customtextwidget.dart';
import '../../../../utilis/constants/Colors/colors.dart';

class popularGridviewBuilder extends StatelessWidget {
  const popularGridviewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 25,
        mainAxisSpacing: 40,
      ),
      itemBuilder: (context, index) {
        return SizedBox(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  height: 80,
                  decoration: const BoxDecoration(color: AppColor.textfieldcolorgrey),
                ),
              ),
              Flexible(
                child: FittedBox(
                  child: customText(
                    text: 'E 18',
                    size: 14,
                  ),
                ),
              )
            ],
          ),
        );
      },
      itemCount: 22,
    );
  }
}
