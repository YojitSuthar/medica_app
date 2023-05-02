import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../../../../provider/provider.dart';
import '../../../../../../resources/resources.dart';
import '../../../../reuse_widget/reuse_widget.dart';
import '';

class PatientDetail extends StatelessWidget {
  const PatientDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = ['Male', 'Female'];

    String dropDownValue = 'Male';

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
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8).r,
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
