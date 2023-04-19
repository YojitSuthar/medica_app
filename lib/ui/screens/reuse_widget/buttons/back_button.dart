import 'package:flutter/material.dart';
import 'package:medica/resources/resources.dart';
import '../../../../resources/import_resources.dart';


class BackIconButton extends StatelessWidget {
  const BackIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Image.asset(IconsAssets.backButtonIcon,height: 18.h,));
  }
}