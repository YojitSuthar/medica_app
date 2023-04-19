import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../resources/resources.dart';

class SignInOption extends StatelessWidget {
  const SignInOption({
    super.key,
    required this.iconAsset,
    required this.label,
  });
  final String iconAsset;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      margin: const EdgeInsets.only(top: 15).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.w),
          border: Border.all(color: ColorManager.grey400Color)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconAsset,
            height: 25,
          ),
          Container(
              margin: const EdgeInsets.only(left: 10).r,
              child: Text(
                label,
                style: fontSizeWeightTextStyle(
                    14, FontWeightManager.medium),
              ))
        ],
      ),
    );
  }
}

class BoxSigninOption extends StatelessWidget {
  const BoxSigninOption({
    super.key,
    required this.iconAsset,
  });
  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 60.w,
      margin: const EdgeInsets.only(right: 15).r,
      padding: EdgeInsets.all(13.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18).w,
          border: Border.all(
              color: ColorManager.greyColor, width: 1.0)),
      child: Image.asset(iconAsset),
    );
  }
}
