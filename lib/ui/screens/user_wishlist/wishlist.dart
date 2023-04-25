import 'package:flutter/material.dart';
import 'package:medica/data/doctor_data.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../resources/resources.dart';
import '../reuse_widget/reuse_widget.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const BackIconButton(),
                DesignText(
                    text: "My Favourite Doctor",
                    fontSize: 18,
                    color: ColorManager.blackColor,
                    padding: 0)
              ],
            ),
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15).w,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: DoctorDataList.doctorData.length,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        debugPrint("Tap");
                        buildShowModalBottomSheet(
                            context, DoctorDataList.doctorData[index]);
                      },
                      child: Container(
                        height: 110.h,
                        margin: EdgeInsets.only(top: 10.r),
                        decoration: BoxDecoration(
                          color: ColorManager.whiteColor,
                          border: Border.all(color: ColorManager.grey300Color),
                          borderRadius: BorderRadius.circular(25).w,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 100.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                          topLeft: const Radius.circular(21).w,
                                          bottomLeft:
                                              const Radius.circular(21).w)
                                      .w,
                                  image: DecorationImage(
                                      image: AssetImage(DoctorDataList
                                          .doctorData[index]["Image"]
                                          .toString()),
                                      fit: BoxFit.cover)),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        DesignText(
                                            text: DoctorDataList
                                                .doctorData[index]["Name"]
                                                .toString(),
                                            fontSize: 13,
                                            color: ColorManager.blackColor,
                                            padding: 0),
                                        IconButton(
                                            padding: const EdgeInsets.all(5),
                                            constraints: const BoxConstraints(),
                                            onPressed: () {},
                                            icon: Image.asset(
                                              IconsAssets.likeFilledIcon,
                                              height: 20.h,
                                            ))
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Divider(
                                        color: ColorManager.grey400Color,
                                        thickness: 1,
                                      ),
                                    ),
                                    DesignText(
                                        text: DoctorDataList.doctorData[index]
                                                ["work"]
                                            .toString(),
                                        fontSize: 12,
                                        color: ColorManager.grey400Color,
                                        padding: 0),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5).r,
                                      width: 130.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            IconsAssets.ratingIcon,
                                            height: 15.h,
                                            color: RGBColorManager.rgbBlueColor,
                                          ),
                                          DesignText(
                                              text: "4.3 (5,735 reviews) ",
                                              fontSize: 12,
                                              color: ColorManager.darkGreyColor,
                                              padding: 0)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
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
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ).w,
      ),
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 250.h,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DesignText(text: "Remove from ", fontSize: fontSize, color: color, padding: padding)
              ],
            ),
          ),
        );
      },
    );
  }
}
