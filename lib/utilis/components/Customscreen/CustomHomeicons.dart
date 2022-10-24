import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customIconButton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

class CustomHomeIcon extends StatelessWidget {
  final img, onclick, text, size, weight, color;

  const CustomHomeIcon(
      {Key? key,
      this.img,
      this.onclick,
      this.text,
      this.size,
      this.weight,
      this.color})
      : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: AppColor.textfieldcolorgrey,
                  borderRadius: BorderRadius.circular(15)),
              child: Transform.scale(
                scale: 1.4,
                child: customIconButton(
                    img: img, onclick: onclick, color: AppColor.colorblack),
              )),
        ),
        Flexible(
            child: Container(
                child: FittedBox(child: customText(text: text, size: size))))
      ],
    );
  }
}



// class icon8 extends StatelessWidget {
//   const icon8({Key? key}) : super(key: key);

//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Column(
//         children: [
//           Container(
//             height: 55,
//             width: 55,
//             decoration: BoxDecoration(
//                 color: Color(0xffF3F5F8),
//                 borderRadius: BorderRadius.circular(15)),
//             child: IconButton(
//               onPressed: (() {}),
//               icon: const ImageIcon(
//                 AssetImage("assets/images/foodicon8.png"),
//               ),
//               iconSize: 55,
//             ),
//           ),
//           const Text(
//             "Bakery",
//             style: const TextStyle(
//               fontSize: 18,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
