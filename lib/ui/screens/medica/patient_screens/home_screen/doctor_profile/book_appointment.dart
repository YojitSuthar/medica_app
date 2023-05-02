import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';

import '../../../../../../provider/provider.dart';
import '../../../../../../resources/resources.dart';
import '../../../../reuse_widget/reuse_widget.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  bool hour = false;
  int currentIndex = 0;

  List<String> hourList = [
    '10.00 AM',
    '10.30 AM',
    '11.00 AM',
    '11.30 AM',
    '12.00 PM',
    '12.30 PM',
    '1.00 PM',
    '5.00 PM',
    '5.30 PM',
    '6.00 PM',
    '6.30 PM',
    '7.00 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIconButton(),
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 5,
        title: DesignText(
          text: "Book Appointment",
          fontSize: 18,
          color: ColorManager.blackColor,
          padding: 0,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Make Appointment',
                style: getSemiBoldStyle(fontSize: 16.sp),
              ),
              Consumer<PickDateProvider>(
                builder: (context, value, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0).r,
                    child: DatePicker(
                      DateTime.now(),
                      height: 100,
                      width: 80,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: RGBColorManager.rgbDarkBlueColor,
                      selectedTextColor: Colors.white,
                      dateTextStyle: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      dayTextStyle: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      monthTextStyle: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onDateChange: (date) {
                        value.pickDate(date);
                      },
                    ),
                  );
                },
              ),
              Text(
                'Select Hour',
                style: getSemiBoldStyle(fontSize: 16.sp),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20).r,
                child: GridView.builder(
                  itemCount: hourList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.9 / 0.3,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20).w,
                            border: Border.all(
                              color: RGBColorManager.rgbDarkBlueColor,
                            ),
                            color: (currentIndex == index)
                                ? RGBColorManager.rgbDarkBlueColor
                                : Colors.white),
                        child: Center(
                            child: Text(
                          hourList[index],
                          style: getSemiBoldStyle(
                              color: currentIndex == index
                                  ? Colors.white
                                  : RGBColorManager.rgbDarkBlueColor),
                        )),
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 50).r,
                child: BlueButton(
                  height: 45,
                  width: 400,
                  color: RGBColorManager.rgbDarkBlueColor,
                  borderRadius: 30,
                  onPressed: () {
                    Get.toNamed('/PatientDetail');
                  },
                  child: const Text(
                    'Next',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
