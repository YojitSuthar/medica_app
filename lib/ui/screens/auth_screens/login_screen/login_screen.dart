import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import 'package:medica/ui/screens/reuse_widget/reuse_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();

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
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(15).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackIconButton(),
                  const CompanyLoginDesign(
                    label: "Login to your account",
                  ),
                  NormalTextFiled(
                    color: ColorManager.whiteColor,
                    readOnly: false,
                    prefixIcon: Image.asset(
                      IconsAssets.mailIcon,
                      height: 35,
                    ),
                    topPadding: 0,
                    leftPadding: 0,
                    hintText: "Email",
                    controller: emailCtrl,
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
                    padding: const EdgeInsets.only(top: 10).r,
                    child: BlueButton(
                      height: 45,
                      width: 400,
                      color: RGBColorManager.rgbDarkBlueColor,
                      onPressed: () {
                        if (emailCtrl.text.contains("@medicadoctor.com")) {
                          Get.offAllNamed("/UserFillProfile");
                        } else if (emailCtrl.text
                            .contains("@medicaadmin.com")) {
                          Get.offAllNamed("/AdminScreen");
                        } else {
                          Get.offAllNamed("/UserFillProfile");
                        }
                      },
                      borderRadius: 30,
                      child: const Text("Sign in"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10).r,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/ForgetPassword');
                      },
                      child: Center(
                          child: Text(
                        "Forget the Password?",
                        style:
                            TextStyle(color: RGBColorManager.rgbDarkBlueColor),
                      )),
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
                              color: ColorManager.blackColor,
                              thickness: 1,
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
                    margin: const EdgeInsets.only(top: 10, bottom: 10).r,
                    child: Center(
                      child: RichTxt(
                        text_1: 'Don\'t have any account? ',
                        text_2: ' Sign up',
                        onTap: () {
                          Get.toNamed("/SignupScreen");
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
