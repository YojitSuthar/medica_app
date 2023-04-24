import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../resources/resources.dart';
import 'package:medica/ui/screens/reuse_widget/reuse_widget.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImageAssets.doctorImage,fit:BoxFit.fill,),
                Text(
                  "Welcome to\n Medica! 👋",
                  style: fontSizeColorTextStyle(
                       40, RGBColorManager.rgbBlueColor),
                ),
                Container(
                  padding: EdgeInsets.all(30.w),
                  child: const Text(
                      "The best online doctor appointment & consultation app of the century for yout health and medical needs!",
                      textAlign: TextAlign.center),
                ),
                BlueButton(
                  height: 50,
                  width: 170,
                  color: RGBColorManager.rgbBlueColor,
                  onPressed: () {
                    Get.toNamed("/OnBoardingScreen");
                  },
                  borderRadius: 20,
                 child: const Text("Continue"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


