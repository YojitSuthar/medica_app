import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import '../../../provider/provider.dart';
import '../reuse_widget/reuse_widget.dart';

class UserFillProfile extends StatelessWidget {
  UserFillProfile({Key? key}) : super(key: key);

  DateTime selectedDate = DateTime.now();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController nickNameCtrl = TextEditingController();
  final TextEditingController dateCtrl = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
    }
  }

  var items = ['Male', 'Female'];

  String dropDownValue = 'Male';

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
              padding: const EdgeInsets.all(15.0).w,
              child: Column(
                children: [
                  Text(
                    "Fill your profile",
                    style: fontSizeTextStyle(16),
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 70.w,
                        backgroundColor: RGBColorManager.rgbWhiteColor,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(IconsAssets.userIcon),
                        ),
                      ),
                      Positioned(
                        left: 120,
                        top: 125,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          height: 25.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: ColorManager.whiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(IconsAssets.editIcon),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: NormalTextFiled(
                      color: ColorManager.whiteColor,
                      readOnly: false,
                      topPadding: 0,
                      leftPadding: 0,
                      hintText: "Full name",
                      controller: nameCtrl,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: NormalTextFiled(
                      color: ColorManager.whiteColor,
                      readOnly: false,
                      topPadding: 0,
                      leftPadding: 0,
                      hintText: "Nick name",
                      controller: nickNameCtrl,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: NormalTextFiled(
                      color: ColorManager.whiteColor,
                      readOnly: true,
                      topPadding: 0,
                      leftPadding: 0,
                      hintText: "$selectedDate".split(' ')[0],
                      controller: null,
                      child: IconButton(
                          padding: const EdgeInsets.only(right: 3).r,
                          constraints: const BoxConstraints(),
                          icon: Image.asset(
                            IconsAssets.calenderIcon,
                          ),
                          onPressed: () {
                            _selectDate(context);
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: NormalTextFiled(
                      color: ColorManager.whiteColor,
                      readOnly: false,
                      topPadding: 0,
                      leftPadding: 0,
                      hintText: "Email",
                      controller: null,
                      child: Image.asset(
                        IconsAssets.mailIcon,
                        height: 25.h,
                      ),
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: BlueButton(
                      height: 45,
                      width: 400,
                      color: RGBColorManager.rgbDarkBlueColor,
                      onPressed: () {
                        Get.toNamed("/CreatePinScreen");
                      },
                      borderRadius: 30,
                      child: const Text("Continue"),
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
