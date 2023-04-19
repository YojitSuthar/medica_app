import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';

import '../../../resources/resources.dart';

class RichTxt extends StatelessWidget {
  const RichTxt({
    super.key,
    required this.text_1,
    required this.text_2,
    required this.onTap,
  });

  final String text_1;
  final String text_2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          text: text_1,
          style: TextStyle(
              color: ColorManager.blackColor,
              fontSize: 13.sp,
              fontWeight: FontWeightManager.bold),
          children: <TextSpan>[
            TextSpan(
                text:text_2,
                style: TextStyle(
                    color: RGBColorManager.rgbDarkBlueColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeightManager.bold))
          ],
        ),
      ),
    );
  }
}