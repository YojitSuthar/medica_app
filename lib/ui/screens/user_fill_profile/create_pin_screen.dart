import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../resources/resources.dart';
import '../reuse_widget/reuse_widget.dart';

class CreatePinScreen extends StatelessWidget {
  CreatePinScreen({Key? key}) : super(key: key);
  OtpFieldController otpController = OtpFieldController();

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
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.all(40),
                  child: Text(
                    "Add a Pin number to make your account more secure",
                    style: TextStyle(fontSize: 20),
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
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 100).r,
                child: BlueButton(
                  height: 45,
                  width: 400,
                  buttonName: "Continue",
                  color: RGBColorManager.rgbDarkBlueColor,
                  onPressed: () {},
                  borderRadius: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
