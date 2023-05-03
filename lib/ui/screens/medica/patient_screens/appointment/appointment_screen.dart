import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import 'package:medica/ui/screens/reuse_widget/reuse_widget.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> tabs = [
      const Tab(
        text: 'Upcoming',
      ),
      const Tab(
        text: 'Past',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(ImageAssets.companyLogoImage,height: 35,width: 35,),
            Text(' My Appointment',style: getBoldStyle(color: ColorManager.blackColor,fontSize: 20.sp),),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0).r,
            child: Image.asset(IconsAssets.searchBlackIcon,width: 25,)
          ),
          Padding(
              padding: EdgeInsets.only(right: 12.0).r,
              child: Image.asset(IconsAssets.moreBlackIcon,width: 25,)
          ),
        ],
        elevation: 0,
      ),
      body: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20.w,),
                  TabBarDesign(
                    tabs: tabs, contentPadding: 57,
                  ),
                  SizedBox(width: 20.w,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0).r,
              child: NormalTextFiled(
                color: ColorManager.grey200Color,
                prefixIcon: Image.asset(IconsAssets.searchIcon, height: 25),
                readOnly: false,
                topPadding: 0,
                leftPadding: 0,
                hintText: "Search",
                controller: null,
                child: IcnButton(
                    iconAsset: IconsAssets.filterIcon, onPressed: () {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
