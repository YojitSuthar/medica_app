import 'package:flutter/material.dart';
import 'package:medica/resources/assets_manager.dart';
import 'package:medica/resources/import_resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigation();
  }

  void navigation() async {
    Duration time = const Duration(seconds: 3);
    await Future.delayed(
      time,
      () {
        Get.offNamed("/IntroScreen");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(IconsAssets.careIcon, height: 50.h),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Medica",
                    style: TextStyle(fontSize: 30.sp),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          Lottie.asset(AnimationAssets.loadingAnimation, height: 100.h),
    );
  }
}
