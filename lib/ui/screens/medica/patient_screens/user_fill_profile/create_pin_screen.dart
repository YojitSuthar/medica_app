import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import '../../../reuse_widget/reuse_widget.dart';


class CreatePinScreen extends StatelessWidget {
  CreatePinScreen({Key? key}) : super(key: key);
  OtpFieldController otpController = OtpFieldController();
  ValueNotifier<bool> buttonClickedTimes = ValueNotifier(false);

  void navigation() async {
    Duration time = const Duration(seconds: 2);
    await Future.delayed(
      time,
      () {
        Get.offAllNamed("/HomePage");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  const BackIconButton(),
                  Text(
                    "Create new pin",
                    style: fontSizeTextStyle(16),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    "Add a Pin number to make your account more secure",
                    style: fontSizeTextStyle( 20),
                    textAlign: TextAlign.center,
                  )),
              OTPTextField(
                  controller: otpController,
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 45,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 15,
                  style: const TextStyle(fontSize: 17),
                  onChanged: (pin) {
                    debugPrint("Changed: $pin");
                  },
                  onCompleted: (pin) {
                    debugPrint("Completed: $pin");
                    buttonClickedTimes.value = true;
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 100).r,
                child: BlueButton(
                  height: 45,
                  width: 400,
                  color: RGBColorManager.rgbDarkBlueColor,
                  onPressed: () {
                    if (buttonClickedTimes.value) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: ColorManager.whiteColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(20.0).w)),
                            child: Container(
                              padding: const EdgeInsets.all(15).w,
                              height: 320.h,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100.h,
                                    width: 100.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageAssets.secureImage),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Text(
                                    "Congratulations!",
                                    style: fontWeightSizeColorTextStyle(
                                      FontWeightManager.bold,
                                      18.sp,
                                      RGBColorManager.rgbBlueColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Your account is ready to use. You wil be redirected to the Home page in few seconds ..",
                                      style: fontSizeTextStyle(
                                        14,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Lottie.asset(AnimationAssets.loadingAnimation,
                                      height: 80.h),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                      navigation();
                    }
                  },
                  borderRadius: 30,
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
