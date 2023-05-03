import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../../../../provider/provider.dart';
import '../../../../../../resources/resources.dart';
import '../../../../reuse_widget/reuse_widget.dart';

class PatientDetail extends StatelessWidget {
  const PatientDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = ['Male', 'Female'];

    String dropDownValue = 'Select Gender';

    return Scaffold(
      appBar: AppBar(
        leading: const BackIconButton(),
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 5,
        title: DesignText(
          text: "Patient Details",
          fontSize: 18,
          color: ColorManager.blackColor,
          padding: 0,
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 8).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const NormalTextFiled(
                    color: ColorManager.whiteColor,
                    readOnly: false,
                    topPadding: 0,
                    leftPadding: 0,
                    hintText: "Enter Full name",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: Consumer<DropDown>(
                      builder: (context, value, child) {
                        return NormalTextFiled(
                          color: ColorManager.whiteColor,
                          readOnly: true,
                          topPadding: 0,
                          leftPadding: 0,
                          hintText: dropDownValue,
                          controller: null,
                          child: DropdownButton(
                            underline: Container(),
                            isDense: true,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              dropDownValue = value.update(
                                  newValue.toString(), dropDownValue);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const NormalTextFiled(
                    hintText: 'Enter Age',
                    topPadding: 0,
                    leftPadding: 0,
                    readOnly: false,
                    color: ColorManager.whiteColor,
                    keyboardType: TextInputType.number,
                  ),
                  const NormalTextFiled(
                    hintText: 'Enter Phone Number',
                    topPadding: 0,
                    leftPadding: 0,
                    readOnly: false,
                    color: ColorManager.whiteColor,
                    keyboardType: TextInputType.phone,
                    child: Icon(
                      Icons.call,
                    ),
                  ),
                  SizedBox(
                    height: 120.h,
                    child: const NormalTextFiled(
                      hintText: 'Write Your Problem',
                      topPadding: 0,
                      leftPadding: 0,
                      readOnly: false,
                      color: ColorManager.whiteColor,
                      keyboardType: TextInputType.multiline,
                      maxLine: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 15, right: 15).r,
          child: BlueButton(
            height: 45,
            width: 400,
            color: RGBColorManager.rgbDarkBlueColor,
            borderRadius: 30,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20).w),
                    child: Padding(
                      padding: const EdgeInsets.all(20).w,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(ImageAssets.bookAppointment),
                          Padding(
                            padding: const EdgeInsets.all(8.0).w,
                            child: Text(
                              'Congratulations!',
                              style: getBoldStyle(
                                  color: RGBColorManager.rgbDarkBlueColor,fontSize: 16.sp,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20).w,
                            child: Text(
                              'Appointment Successfully booked.The doctor you selected will contact you.',
                              style: getRegularStyle(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          BlueButton(
                            height: 30,
                            width: 250,
                            color: RGBColorManager.rgbDarkBlueColor,
                            borderRadius: 30,
                            onPressed: () {
                              Get.offAllNamed('/BottomNavigation');
                            },
                            child: const Text(
                              'OK',
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                barrierDismissible: true,
              );
            },
            child: const Text('Submit'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
