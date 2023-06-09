import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import 'package:medica/ui/screens/reuse_widget/reuse_widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController usernameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackIconButton(),
                  const CompanyLoginDesign(
                    label: "Create new account",
                  ),
                  NormalTextFiled(
                    color: ColorManager.whiteColor,
                    prefixIcon: Image.asset(
                      IconsAssets.userIcon,
                      height: 24.h,
                      color: ColorManager.grey400Color,
                    ),
                    topPadding: 0,
                    leftPadding: 10,
                    hintText: "Username",
                    controller: usernameCtrl,
                    readOnly: false,
                  ),
                  NormalTextFiled(
                    color: ColorManager.whiteColor,
                    prefixIcon: Image.asset(
                      IconsAssets.mailIcon,
                      height: 28.h,
                    ),
                    topPadding: 0,
                    leftPadding: 10,
                    hintText: "Email",
                    controller: emailCtrl,
                    readOnly: false,
                  ),
                  PassField(
                    height: 20,
                    hintText: "Password",
                    iconAsset: IconsAssets.passwordIcon,
                    textPassCtrl: passwordCtrl,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CheckBoxWidget(),
                      Text(
                        "Remember me",
                        style: fontSizeTextStyle(13),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: BlueButton(
                      height: 45,
                      width: 400,
                      color: RGBColorManager.rgbDarkBlueColor,
                      onPressed: () {},
                      borderRadius: 30,
                      child: const Text("Sign up"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 25),
                    child: Row(children: [
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 20.0)
                                    .r,
                            child: Divider(
                              color: ColorManager.blackColor,
                              thickness: 1,
                            )),
                      ),
                      const Text("Or continue with"),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 10.0)
                                    .r,
                            child: Divider(
                              thickness: 1,
                              color: ColorManager.blackColor,
                            )),
                      ),
                    ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      BoxSigninOption(
                        iconAsset: IconsAssets.facebookIcon,
                      ),
                      BoxSigninOption(
                        iconAsset: IconsAssets.googleIcon,
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20).r,
                    child: Center(
                      child: RichTxt(
                        text_1: 'Already have an account?',
                        text_2: ' Sign in',
                        onTap: () {
                          Get.toNamed("/LoginScreen");
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
