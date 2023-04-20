import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../resources/resources.dart';


class CompanyLoginDesign extends StatelessWidget {
  const CompanyLoginDesign({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 180.h,
        child: Column(
          children: [
            SizedBox(
                height: 130.h,
                child: Image.asset(ImageAssets.companyLogoImage,)),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(label,style: TextStyle(fontSize: 22.sp),),
            )

          ],
        ),
      ),
    );
  }
}