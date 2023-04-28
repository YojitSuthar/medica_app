import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/data/doctor_data.dart';
import '../../../../../resources/resources.dart';
import '../../../reuse_widget/reuse_widget.dart';

class TopDoctorScreen extends StatelessWidget {
   TopDoctorScreen({Key? key}) : super(key: key);
  List<Widget> tabs = [
    const Tab(
      text: 'All',
    ),
    const Tab(
      text: 'Cardio',
    ),
    const Tab(
      text: 'Dental',
    ),
    const Tab(
      text: 'Eye',
    ),
    const Tab(
      text: 'Brain',
    ),
    const Tab(
      text: 'Child',
    ),
    const Tab(
      text: 'Nerve',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 5,
        leading:  const BackIconButton(),
        title: DesignText(
            text: "My Favourite Doctor",
            fontSize: 18,
            color: ColorManager.blackColor,
            padding: 0),
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16).r,
            child:  Icon(size: 21.h,
              Icons.filter_list_rounded,
              color: ColorManager.blackColor,
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            TabBarDesign(tabs: tabs,),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount:  DoctorData.doctorData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15).w,
                    child:BoxDesign(
                      image: DoctorData.doctorData[index]["Image"].toString(),
                      name: DoctorData.doctorData[index]["Name"].toString(),
                      work: DoctorData.doctorData[index]["work"].toString(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}
