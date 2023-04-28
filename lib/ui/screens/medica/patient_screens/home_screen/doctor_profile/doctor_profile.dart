import 'package:medica/data/doctor_data.dart';
import 'package:medica/provider/provider.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:flutter/material.dart';
import 'package:medica/resources/resources.dart';

import '../../../../reuse_widget/reuse_widget.dart';

class DoctorProfile extends StatelessWidget {
  final String name;
  final String image;
  final String review;
  final String special;

  const DoctorProfile(
      {Key? key,
      required this.name,
      required this.image,
      required this.review,
      required this.special})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> share() async {
      await FlutterShare.share(
          title: 'Example share',
          text: 'Doctor Name: $name \nSpecialist : $special \nReview : $review',
          chooserTitle: 'Example Chooser Title');
    }

    return Scaffold(
      appBar: appBarDesign(share),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                doctorCard(),
                Container(
                  margin: EdgeInsets.only(top: 10.r),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15).w,
                  decoration: BoxDecoration(
                      border: Border.all(color: RGBColorManager.rgbDarkBlueColor),
                      borderRadius: BorderRadius.circular(20).w),
                  child: Row(
                    children: const [
                      DoctorInformation(
                          number: '5000+', title: 'Patients', icon: Icons.people),
                      Spacer(),
                      DoctorInformation(
                          number: '15+',
                          title: 'Years experiences',
                          icon: Icons.person),
                      Spacer(),
                      DoctorInformation(
                          number: '3800+',
                          title: 'Reviews',
                          icon: Icons.message_rounded)
                    ],
                  ),
                ),
                aboutDoctor(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20).w,
                      border: Border.all(color: ColorManager.grey300Color)),
                  child: Padding(
                    padding: const EdgeInsets.all(10).w,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            DoctorData.reviewOfPatient[0]['Image'],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DoctorData.reviewOfPatient[0]['Name'],
                              style: TextStyle(fontSize: 15.sp),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6.0, bottom: 6).r,
                              child: Text(
                                DoctorData.reviewOfPatient[0]['Date'],
                                style: TextStyle(fontSize: 10.sp),
                              ),
                            ),
                            Text(
                              DoctorData.reviewOfPatient[0]['feedback'],
                              style: getTextStyle(),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: RGBColorManager.rgbDarkBlueColor,
                              borderRadius: BorderRadius.circular(10).w),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: ColorManager.whiteColor,
                                  size: 22,
                                ),
                                Text(
                                  ' 5 ',
                                  style: TextStyle(
                                    color: ColorManager.whiteColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // makeAppointment(),
                Padding(
                  padding: const EdgeInsets.only(top: 15).r,
                  child: BlueButton(
                    height: 45,
                    width: 400,
                    color: RGBColorManager.rgbDarkBlueColor,
                    onPressed: () {
                        Get.toNamed('/BookAppointment');
                    },
                    borderRadius: 30,
                    child: const Text("Booking Appointment"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column makeAppointment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10).r,
          child: Text(
            'Make Appointment',
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
        Consumer<PickDateProvider>(
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
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
                      fontWeight: FontWeight.w600),
                ),
                dayTextStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
                monthTextStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
                onDateChange: (date) {
                  value.pickDate(date);
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Column aboutDoctor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10).r,
          child: Text(
            'About Doctor',
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10).w,
          child: Text(
            'Dr. Jenny Wilson is the top most Cardiologist specialist in Divine Hospital at London. She achieved several awards for her wonderful contribution in medical field. She is available for private consultation.',
            style: TextStyle(fontSize: 13.sp),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10).r,
          child: Text(
            'Working Time',
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10).w,
          child: const Text('Mon - Fri, 09.00 AM - 06.00 PM'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reviews",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/ReviewScreen');
                },
                child: Text(
                  'see all',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: RGBColorManager.rgbDarkBlueColor,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Container doctorCard() {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        borderRadius: BorderRadius.circular(20).w,
        border: Border.all(
          color: ColorManager.grey300Color,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: Image.asset(
                image,
                height: 90.h,
                width: 100.w,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15).r,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10).r,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        IconsAssets.ratingIcon,
                        height: 13.h,
                        color: RGBColorManager.rgbDarkBlueColor,
                      ),
                      Text(
                        review,
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                Text(
                  '$special',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBarDesign(Future<void> Function() share) {
    return AppBar(
      iconTheme: IconThemeData(
        color: RGBColorManager.rgbDarkBlueColor, //change your color here
      ),
      leading: const BackIconButton(),
      title:Text(
        name,
        style: TextStyle(
          color: ColorManager.blackColor,
          fontSize: 18.sp,
        ),
      ),
      backgroundColor: ColorManager.whiteColor,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12).r,
          child: Align(
            child: GestureDetector(
              onTap: () {
              },
              child: Icon(
                Icons.favorite_border,
                color:ColorManager.blackColor,
                size: 21.h,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16).r,
          child: Align(
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/FavoriteScreen');
              },
              child: GestureDetector(
                onTap: share,
                child: Icon(
                  Icons.share,
                  size: 21.h,
                  color: ColorManager.blackColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
