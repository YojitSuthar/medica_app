import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../resources/resources.dart';

class DoctorInformation extends StatelessWidget {
  final String number;
  final String title;
  final IconData icon;
  const DoctorInformation({Key? key, required this.number, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: RGBColorManager.rgbWhiteBlueColor,
          child: Icon(
            icon,
            color: RGBColorManager.rgbDarkBlueColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 5).r,
          child: Text(
            number,
            style:  TextStyle(
                color: RGBColorManager.rgbDarkBlueColor),
          ),
        ),
        Text(
          title,
          style: fontSizeTextStyle(14),
        ),
      ],
    );
  }
}
