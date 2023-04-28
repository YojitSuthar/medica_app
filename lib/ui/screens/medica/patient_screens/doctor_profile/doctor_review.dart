import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/data/doctor_data.dart';
import '../../../../../resources/resources.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDesign(),
      body: ListView.builder(
        itemCount: DoctorData.reviewOfPatient.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10).w,
            child: Container(
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
                        DoctorData.reviewOfPatient[index]['Image'],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DoctorData.reviewOfPatient[index]['Name'],
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, bottom: 6).r,
                          child: Text(
                            DoctorData.reviewOfPatient[index]['Date'],
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ),
                        Text(
                          DoctorData.reviewOfPatient[index]['feedback'],
                          style: getTextStyle(  ),
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
                          children: [
                            const Icon(
                              Icons.star,
                              color: ColorManager.whiteColor,
                              size: 22,
                            ),
                            index == 5
                                ?  const Text(
                              ' 4 ',
                              style: TextStyle(
                                color: ColorManager.whiteColor,
                              ),
                            )
                                : index == 3
                                ?  const Text(
                              ' 2 ',
                              style: TextStyle(
                                color: ColorManager.whiteColor,
                              ),
                            )
                                : index.isOdd
                                ?  const Text(
                              ' 5 ',
                              style: TextStyle(
                                color: ColorManager.whiteColor,
                              ),
                            )
                                :  const Text(
                              ' 3 ',
                              style: TextStyle(
                                color: ColorManager.whiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }



  appbarDesign() {
    return AppBar(
      iconTheme:  IconThemeData(
        color: RGBColorManager.rgbDarkBlueColor, //change your color here
      ),
      leadingWidth: 30.w,
      title: Text(
        'Reviews',
        style: TextStyle(
          color: ColorManager.blackColor,
          fontSize: 18.sp,
        ),
      ),
      backgroundColor: ColorManager.whiteColor,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16).r,
          child: Align(
            child: Container(
              decoration: BoxDecoration(
                  color: RGBColorManager.rgbWhiteBlueColor,
                  borderRadius: BorderRadius.circular(10).w),
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.filter_list_rounded,
                  color: RGBColorManager.rgbDarkBlueColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
