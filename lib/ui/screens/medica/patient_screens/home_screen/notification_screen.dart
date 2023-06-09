import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../../../resources/resources.dart';
import '../../../reuse_widget/reuse_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIconButton(),
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 5,

        title: DesignText(
            text: "Notification",
            fontSize: 18,
            color: ColorManager.blackColor,
            padding: 0),
        actions: [
          IcnButton(onPressed: () {}, iconAsset: IconsAssets.moreBlackIcon)
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0).w,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    height: 145.h,
                    width: double.infinity,
                    // color: Colors.pink,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25.w,
                              backgroundColor:
                                  RGBColorManager.rgbWhiteBlueColor,
                              child: Image.asset(
                                IconsAssets.timeTableFilledIcon,
                                height: 20.h,
                              ),
                            ),
                            Container(
                              height: 40.h,
                              margin: const EdgeInsets.only(left: 12).r,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  DesignText(
                                      text: "Appointment Success!",
                                      fontSize: 13,
                                      color: ColorManager.blackColor,
                                      padding: 0),
                                  DesignText(
                                      text: "Today | 15.36 PM",
                                      fontSize: 12,
                                      color: ColorManager.greyColor,
                                      padding: 0),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "You have successfully booked an appointment with Dr. Alan watson on December 24, 2024 ,10.00 am. Don't to activate your remainder ",
                            style: TextStyle(color: ColorManager.greyColor,fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
