import 'package:flutter/material.dart';
import 'package:medica/data/doctor_data.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../../../resources/resources.dart';
import '../../../reuse_widget/reuse_widget.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 5,
        leading: const BackIconButton(),
        automaticallyImplyLeading: false,
        elevation: 0,
        title:   DesignText(
            text: "My Favourite Doctor",
            fontSize: 18,
            color: ColorManager.blackColor,
            padding: 1),
        actions: [
          Row(
            children: [
              IcnButton(
                  onPressed: () {}, iconAsset: IconsAssets.searchBlackIcon),
              IcnButton(
                  onPressed: () {}, iconAsset: IconsAssets.moreBlackIcon)
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15).w,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: DoctorData.doctorData.length,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        debugPrint("Tap");
                        buildShowModalBottomSheet(

                            context, DoctorData.doctorData[index]);
                      },
                      child: BoxDesign(
                        image: DoctorData.doctorData[index]["Image"].toString(),
                        name: DoctorData.doctorData[index]["Name"].toString(),
                        work: DoctorData.doctorData[index]["work"].toString(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> buildShowModalBottomSheet(
      BuildContext context, Map<String, String> data) {
    return showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: const Radius.circular(20).w,
          topLeft: const Radius.circular(20).w,
        ).w,
      ),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 15,bottom: 25,right: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0).r,
                child: Container(
                  height: 3.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: ColorManager.grey300Color,
                      borderRadius: BorderRadius.circular(20).w),
                ),
              ),
              BoxDesign(image: data["Image"].toString(),
                name: data["Name"].toString(),
                work: data["work"].toString(), ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Text(
                  'Remove from favorite?',
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: BlueButton(
                      height: 40,
                      width: 150,
                      color: ColorManager.whiteColor,
                      onPressed: () {
                        Get.back();
                      },
                      borderRadius: 30,
                      child:  Text("Cancel", style: TextStyle(color: RGBColorManager.rgbDarkBlueColor)),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: BlueButton(
                      height: 40,
                      width: 150,
                      color: RGBColorManager.rgbDarkBlueColor,
                      onPressed: () {Get.back();},
                      borderRadius: 30,
                      child: const Text("Yes,Remove"),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
