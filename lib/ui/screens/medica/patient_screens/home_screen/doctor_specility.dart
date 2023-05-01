import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';

import '../../../reuse_widget/reuse_widget.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIconButton(),
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 5,
        title: DesignText(
            text: "Doctor Speciality",
            fontSize: 18,
            color: ColorManager.blackColor,
            padding: 0),
        actions: [
          IcnButton(onPressed: () {}, iconAsset: IconsAssets.moreBlackIcon)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15).w,
          child: Column(
            children: [
              ListTile(
                tileColor: RGBColorManager.rgbWhiteBlueColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: ColorManager.pinkColor)),
                leading: Image.asset(IconsAssets.careIcon),
              )
            ],
          ),
        ),
      ),
    );
  }
}
