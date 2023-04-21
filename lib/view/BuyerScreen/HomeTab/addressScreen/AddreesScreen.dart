import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/components/customwidgets/customSizeBox.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

import '../../../../utilis/components/Customscreen/customAddressScreenWidget.dart';
import '../../../../utilis/components/Customscreen/header.dart';
import '../drawerScreen/drawerscreen.dart';

class kimsAddress extends StatelessWidget {
  const kimsAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.scaffoldcolor,
        drawer: const mydrawer(),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const customhomeLogo(
                  backarrow: false,
                  centerText: false,
                ),
                const CustomFlexibleSizeBox(
                  flex: 1,
                  height: 20.0,
                ),
                customText(
                    text: "Kim's Japanese Food",
                    size: 20,
                    weight: FontWeight.bold,
                    textColor: AppColor.colorblack),
                const CustomFlexibleSizeBox(
                  flex: 1,
                  height: 10.0,
                ),
                customText(
                  text: 'Address',
                  size: 20,
                  weight: FontWeight.w600,
                  textColor: AppColor.lightgreyTextcolor,
                ),
                const CustomFlexibleSizeBox(
                  flex: 1,
                  height: 35.0,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: double.infinity,
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                
                      const AddressScreenText(text: 'Business Name', weight: true),
                      const CustomFlexibleSizeBox(
                        flex: 1,
                        height: 10.0,
                      ),
                      const AddressScreenText(
                          text: "kim's Japenese Food", weight: false),
                      const CustomFlexibleSizeBox(
                        flex: 2,
                        height: 40.0,
                      ),    
                      const AddressScreenText(text: 'Address', weight: true),
                      const CustomFlexibleSizeBox(
                        flex: 1,
                        height: 10.0,
                      ),
                      const AddressScreenText(
                          text: "lorem ipsum lorem ipsum", weight: false),
                      const CustomFlexibleSizeBox(
                        flex: 2,
                        height: 40.0,
                      ),    
                      const AddressScreenText(text: 'City', weight: true),
                      const CustomFlexibleSizeBox(
                        flex: 1,
                        height: 10.0,
                      ),
                      const AddressScreenText(text: 'London', weight: false),
                      const CustomFlexibleSizeBox(
                        flex: 2,
                        height: 40.0,
                      ),    
                      const AddressScreenText(text: 'Postcode', weight: true),
                      const CustomFlexibleSizeBox(
                        flex: 1,
                        height: 10.0,
                      ),
                      const AddressScreenText(text: "78200", weight: false),
                      const CustomFlexibleSizeBox(
                        flex: 2,
                        height: 40.0,
                      ),    
                      const AddressScreenText(text: 'Business Name', weight: true),
                      const CustomFlexibleSizeBox(
                        flex: 1,
                        height: 10.0,
                      ),
                      const AddressScreenText(
                          text: "www.asdad.com.uk", weight: false),
                      const CustomFlexibleSizeBox(
                        flex: 1,
                        height: 40.0,
                      ),    
                
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              width: double.infinity,
              height: 90,
              decoration: const BoxDecoration(
                  color: AppColor.textfieldcolorgrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customText(
                      text: '+923168062544',
                      size: 17,
                      weight: FontWeight.w600,
                      textColor: AppColor.headertextcolor,
                    ),
                    SizedBox(
                        height: 56,
                        width: 135,
                        child: customelevatedbutton(
                            onpress: () {},
                            child: customText(
                              text: 'Call',
                              size: 17,
                              weight: FontWeight.bold,
                            ),
                            color: AppColor.splashbackgroundcolor))
                  ]),
            ),
          )
      ),
    );
  }
}

