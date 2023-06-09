import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import 'package:medica/ui/screens/reuse_widget/reuse_widget.dart';

class SocialScreen extends StatelessWidget {
  SocialScreen({Key? key}) : super(key: key);

  List<Map<String, String>> signinOption = [
    {"iconAsset": IconsAssets.facebookIcon, "label": "Continue with Facebook"},
    {"iconAsset": IconsAssets.googleIcon, "label": "Continue with Google"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const BackIconButton(),
                Center(
                    child: SizedBox(
                      height: 255.h,
                      child: Column(
                        children: [
                          Image.asset(
                            ImageAssets.socialImage,
                            height: 200.h,
                          ),
                          Text(
                            "Let's you in",
                            style: TextStyle(fontSize: 35.sp),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 150.h,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: signinOption.length,
                        itemBuilder: (BuildContext context, index) {
                          return SignInOption(
                            label: signinOption[index]["label"].toString(),
                            iconAsset:
                            signinOption[index]["iconAsset"].toString(),
                          );
                        })),
                Row(children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0).r,
                        child: const Divider(
                         thickness: 1,
                        )),
                  ),
                  const Text("Or"),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0).r,
                        child: const Divider(
                         thickness: 1,
                        )),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: BlueButton(
                    height: 45,
                    width: 400,
                    color: RGBColorManager.rgbBlueColor,
                    onPressed: () {
                      Get.toNamed("/LoginScreen");
                    },
                    borderRadius: 30,
                    child: const Text("Sign in with Email"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 30).r,
                  child: Center(
                    child: RichTxt(text_1: 'Don\'t have an account?',
                      text_2: ' Sign up',
                      onTap: () {Get.toNamed("/SignupScreen");},),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


