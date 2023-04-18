import 'package:flutter/material.dart';
import 'package:medica/resources/assets_manager.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';

import '../reuse_widget/reuse_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15).w,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (index) {},
                  controller: controller,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(ImageAssets.boarding_1Image),
                        Text(
                          "Thousands of doctors & experts to help your health! ",
                          style: TextStyle(
                              fontSize: 30,
                              color: RGBColorManager.rgbBlueColor),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Center(
                      child: Text('Second Page'),
                    ),
                    Center(
                      child: Text('Third Page'),
                    ),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: RGBColorManager.rgbBlueColor,
                    dotColor: ColorManager.grey400Color),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Button(
                  height: 45,
                  width: 400,
                  buttonName: "Next",
                  color: RGBColorManager.rgbBlueColor,
                  onPressed: () {
                  },
                  borderRadius: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
