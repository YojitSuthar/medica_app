import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';

class NormalTextFiled extends StatelessWidget {
  const NormalTextFiled({
    super.key,
    required this.hintText,
     this.controller,
    required this.topPadding,
    required this.leftPadding,
    required this.readOnly,
    required this.color,
    this.prefixIcon,
    this.child,
    this.keyboardType,
    this.maxLine,
  });

  final String hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? child;
  final double topPadding;
  final double leftPadding;
  final bool readOnly;
  final Color color;
  final TextInputType? keyboardType;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 17).r,
      padding: const EdgeInsets.only(left: 15, right: 15).r,
      height: 45.h,
      decoration: BoxDecoration(
        color: color,
          border: Border.all(color: ColorManager.greyColor, width: 1),
          borderRadius: BorderRadius.circular(15).w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: TextFormField(
                maxLines: maxLine,
            textInputAction: TextInputAction.next,
            controller: controller,
            readOnly: readOnly,
            keyboardType: keyboardType,
            decoration: InputDecoration(
                icon: prefixIcon,
                hintText: hintText,
                contentPadding:
                    EdgeInsets.only(left: leftPadding, top: topPadding),
                border: InputBorder.none),
          )),
          child==null?Container():Container(child: child,)
        ],
      ),
    );
  }
}
