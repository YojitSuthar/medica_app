import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import '../../../provider/provider.dart';
import '../reuse_widget/reuse_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final button = Provider.of<ButtonProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15).w,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (index) {
                    button.onChange(index);
                  },
                  controller: controller,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          ImageAssets.boarding_1Image,
                          height: 250.h,
                        ),
                        Text(
                          "Thousands of doctors & experts to help your health! ",
                          style: fontSizeColorTextStyle(
                              30, RGBColorManager.rgbBlueColor),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(ImageAssets.boarding_2Image, height: 250.h),
                        Text(
                          "Health checks & consultations easily anywhere anytime",
                          style: fontSizeColorTextStyle(
                              30, RGBColorManager.rgbBlueColor),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(ImageAssets.boarding_3Image, height: 250.h),
                        Text(
                          "Let's start living healthy and well with us right now !",
                          style: fontSizeColorTextStyle(
                              30, RGBColorManager.rgbBlueColor),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    dotHeight: 10.h,
                    dotWidth: 10.w,
                    activeDotColor: RGBColorManager.rgbBlueColor,
                    dotColor: ColorManager.grey400Color),
              ),
              Consumer<ButtonProvider>(builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: BlueButton(
                    height: 45,
                    width: 400,
                    color: RGBColorManager.rgbBlueColor,
                    onPressed: value.change
                        ? () {
                            Get.offAllNamed("/SocialScreen");
                          }
                        : () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 250),
                                curve: Curves.easeIn);
                          },
                    borderRadius: 20,
                    child: value.change
                        ? const Text("Get Started")
                        : const Text("Next"),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
