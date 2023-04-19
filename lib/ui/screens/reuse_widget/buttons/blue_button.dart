import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.borderRadius,
    required this.onPressed,
    required this.buttonName,
  });

  final double height;
  final double width;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey,
            elevation: 5,
            fixedSize: Size(width.w, height.h),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius).w)),
        onPressed: onPressed,
        child: Text(buttonName));
  }
}