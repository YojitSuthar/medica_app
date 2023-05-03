import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:medica/resources/resources.dart';

class TabBarDesign extends StatelessWidget {
  TabBarDesign({
    super.key,
    required this.tabs, required this.contentPadding,
  });

  List<Widget> tabs;
  final double contentPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ButtonsTabBar(
        backgroundColor: RGBColorManager.rgbDarkBlueColor,
        unselectedBackgroundColor: ColorManager.whiteColor,
        unselectedLabelStyle: TextStyle(
          color: RGBColorManager.rgbDarkBlueColor,
        ),
        labelStyle: const TextStyle(
          color: ColorManager.whiteColor,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: contentPadding).r,
        borderColor: RGBColorManager.rgbDarkBlueColor,
        radius: 20,
        borderWidth: 2,
        unselectedBorderColor: RGBColorManager.rgbDarkBlueColor,
        tabs: tabs,
      ),
    );
  }
}
