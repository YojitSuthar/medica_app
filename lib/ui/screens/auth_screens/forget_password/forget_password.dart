import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import 'package:medica/ui/screens/reuse_widget/reuse_widget.dart';


class ForgetPassword extends StatelessWidget {
   ForgetPassword({Key? key}) : super(key: key);
  final TextEditingController emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const BackIconButton(),
              const CompanyLoginDesign(
                label: "Forget Password",
              ),
              NormalTextFiled(
                color: ColorManager.whiteColor,
                readOnly: false,
                prefixIcon: Image.asset(IconsAssets.mailIcon,height: 28.h,),
                topPadding: 0,
                leftPadding: 10,
                hintText: "Email",
                controller: emailCtrl,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20).r,
                child: BlueButton(
                  height: 45,
                  width: 400,
                  color: RGBColorManager.rgbDarkBlueColor,
                  onPressed: () {},
                  borderRadius: 30,
                  child: const Text("Sent"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
