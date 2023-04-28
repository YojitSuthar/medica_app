import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';

import '../../../../resources/resources.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.borderRadius,
    required this.onPressed,
    required this.child,
  });

  final double height;
  final double width;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.grey,
            elevation: 3,
            fixedSize: Size(width.w, height.h),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: RGBColorManager.rgbDarkBlueColor),
                borderRadius: BorderRadius.circular(borderRadius).w)),
        onPressed: onPressed,
        child: child);
  }
}
