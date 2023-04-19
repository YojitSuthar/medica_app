import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';


class NormalTextFiled extends StatelessWidget {
  const NormalTextFiled({
    super.key,
    required this.hintText,
    required this.iconAsset,
    required this.controller,
  });

  final String hintText;
  final String iconAsset;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10).r,
      padding: const EdgeInsets.only(left: 15, right: 20).r,
      height: 50.h,
      decoration: BoxDecoration(
          border:
          Border.all(color: ColorManager.greyColor, width: 1),
          borderRadius: BorderRadius
              .circular(20)
              .w),
      child: Row(
        children: [
          Image.asset(
            iconAsset,
            height: 25.h,
          ),
          Expanded(
              child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: controller,
                decoration: InputDecoration(
                    hintText: hintText,
                    contentPadding: EdgeInsets.only(left: 15.r),
                    border: InputBorder.none),
              ))
        ],
      ),
    );
  }
}