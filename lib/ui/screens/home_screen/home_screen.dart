import 'package:flutter/material.dart';
import 'package:medica/data/doctor_data.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import '../reuse_widget/reuse_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final PageController controller = PageController();

  List<Map<String, String>> doctorSpeciality = [
    {"label": "General", "icon": IconsAssets.peopleIcon},
    {"label": "Dentist", "icon": IconsAssets.toothIcon},
    {"label": "Ophthalmologist", "icon": IconsAssets.eyeIcon},
    {"label": "Nutrition", "icon": IconsAssets.nutritionIcon},
    {"label": "Neurologist", "icon": IconsAssets.brainIcon},
    {"label": "Pediatric", "icon": IconsAssets.familyIcon},
    {"label": "Radiologist", "icon": IconsAssets.jointIcon},
    {"label": "More", "icon": IconsAssets.moreIcon},
  ];


  List<Map<String, String>> buttomNav = [
    {
      "label": "Home",
      "Select": IconsAssets.homeFilledIcon,
      "notSelect": IconsAssets.homeUnfilledIcon
    },
    {
      "label": "Appointment",
      "Select": IconsAssets.timeTableFilledIcon,
      "notSelect": IconsAssets.timeTableUnfilledIcon
    },
    {
      "label": "History",
      "Select": IconsAssets.historyFilledIcon,
      "notSelect": IconsAssets.historyUnfilledIcon
    },
    {
      "label": "Articles",
      "Select": IconsAssets.officeFilledIcon,
      "notSelect": IconsAssets.officeUnfilledIcon
    },
    {
      "label": "Profile",
      "Select": IconsAssets.userFilledIcon,
      "notSelect": IconsAssets.userUnfilledIcon
    },
  ];

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
        appBar: AppBar(
          toolbarHeight: 65.h,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://c4.wallpaperflare.com/wallpaper/529/555/624/mask-neon-person-photography-wallpaper-preview.jpg"),
                  ),
                  Container(
                    height: 45.h,
                    margin: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning 👋",
                          style: fontSizeColorTextStyle(
                              13.sp, ColorManager.greyColor),
                        ),
                        Text(
                          "Andrew Ashely",
                          style: fontWeightSizeColorTextStyle(
                              FontWeightManager.bold,
                              15,
                              ColorManager.blackColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IcnButton(
                      onPressed: () {
                        debugPrint("NotificationScreen");
                        Get.toNamed("/NotificationScreen");
                      },
                      iconAsset: IconsAssets.notificationIcon),
                  IcnButton(
                      onPressed: () {
                        Get.toNamed("/WishListScreen");
                      },
                      iconAsset: IconsAssets.likeIcon),
                ],
              )
            ],
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NormalTextFiled(
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
                  Container(
                    margin: const EdgeInsets.only(top: 15).w,
                    height: 160.h,
                    padding: EdgeInsets.all(15.w),
                    decoration: BoxDecoration(
                        color: ColorManager.grey400Color,
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://c4.wallpaperflare.com/wallpaper/641/678/533/digital-art-low-poly-minimalism-2d-wallpaper-preview.jpg"),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                              color: RGBColorManager.rgbWhiteBlueColor,
                              spreadRadius: 5,
                              offset: const Offset(4, 7),
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(37.w)),
                    child: PageView(
                      onPageChanged: (index) {
                        print(index);
                      },
                      controller: controller,
                      children: const <Widget>[
                        SliderData(label: "Medical Checkups!"),
                        SliderData(label: "Health Checkups!"),
                        SliderData(label: "Body Checkups!"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.r),
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: ExpandingDotsEffect(
                            dotHeight: 8.h,
                            dotWidth: 8.w,
                            activeDotColor: RGBColorManager.rgbBlueColor,
                            dotColor: ColorManager.grey400Color),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DesignText(
                          text: "Doctor Speciality",
                          fontSize: 15,
                          color: ColorManager.blackColor,
                          padding: 10),
                      DesignText(
                          text: "See All",
                          fontSize: 13,
                          color: RGBColorManager.rgbBlueColor,
                          padding: 10),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  SizedBox(
                    height: 190.h,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: doctorSpeciality.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 35,
                        childAspectRatio: 0.55,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor:
                                  RGBColorManager.rgbWhiteBlueColor,
                              child: Image.asset(
                                doctorSpeciality[index]["icon"].toString(),
                                height: 28.h,
                              ),
                            ),
                            Center(
                              child: DesignText(
                                text:
                                    doctorSpeciality[index]["label"].toString(),
                                fontSize: 12,
                                color: ColorManager.blackColor,
                                padding: 5,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DesignText(
                          text: "Top Doctors",
                          fontSize: 15,
                          color: ColorManager.blackColor,
                          padding: 10),
                      DesignText(
                          text: "See All",
                          fontSize: 13,
                          color: RGBColorManager.rgbBlueColor,
                          padding: 10),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8).r,
                    child: SizedBox(
                      height: 25.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: doctorSpeciality.length,
                        itemBuilder: (BuildContext context, index) {
                          return CategoryButton(
                            label: DoctorDataList.doctorCategory[index].toString(),
                            index: index,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 220.h,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: DoctorDataList.doctorData.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10).w,
                          child: Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: ColorManager.grey400Color,
                                    width: 1.2),
                                borderRadius: BorderRadius.circular(10).w),
                            child: Column(
                              children: [
                                Container(
                                  height: 130.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(DoctorDataList.doctorData[index]
                                                  ["Image"]
                                              .toString()),
                                          fit: BoxFit.fill),
                                      borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(9),
                                              topRight: Radius.circular(9))
                                          .r),
                                ),
                                DesignText(
                                    text: DoctorDataList.doctorData[index]["Name"].toString(),
                                    fontSize: 15,
                                    color: ColorManager.blackColor,
                                    padding: 5),
                                DesignText(
                                    text: DoctorDataList.doctorData[index]["work"].toString(),
                                    fontSize: 10,
                                    color: ColorManager.greyColor,
                                    padding: 10),
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
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          height: 75.h,
          color: ColorManager.whiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottumNavButton(
                label: buttomNav[0]["label"].toString(),
                inDex: 0,
                onSelectImageAsset: buttomNav[0]["Select"].toString(),
                notSelectImageAsset: buttomNav[0]["notSelect"].toString(),
              ),
              BottumNavButton(
                label: buttomNav[1]["label"].toString(),
                inDex: 1,
                onSelectImageAsset: buttomNav[1]["Select"].toString(),
                notSelectImageAsset: buttomNav[1]["notSelect"].toString(),
              ),
              BottumNavButton(
                label: buttomNav[2]["label"].toString(),
                inDex: 2,
                onSelectImageAsset: buttomNav[2]["Select"].toString(),
                notSelectImageAsset: buttomNav[2]["notSelect"].toString(),
              ),
              BottumNavButton(
                label: buttomNav[3]["label"].toString(),
                inDex: 3,
                onSelectImageAsset: buttomNav[3]["Select"].toString(),
                notSelectImageAsset: buttomNav[3]["notSelect"].toString(),
              ),
              BottumNavButton(
                label: buttomNav[4]["label"].toString(),
                inDex: 4,
                onSelectImageAsset: buttomNav[4]["Select"].toString(),
                notSelectImageAsset: buttomNav[4]["notSelect"].toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SliderData extends StatelessWidget {
  const SliderData({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: fontWeightSizeColorTextStyle(
              FontWeightManager.bold, 15, ColorManager.whiteColor),
        ),
        Container(
          padding: EdgeInsets.only(right: 50.r),
          margin: EdgeInsets.only(top: 10.r),
          child: Text(
            "Check you health Condition regularly to minimize the incidence of the disease in future.",
            style: fontSizeColorTextStyle(10.sp, ColorManager.whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: BlueButton(
            color: ColorManager.whiteColor,
            height: 25.h,
            width: 85.w,
            borderRadius: 10,
            onPressed: () {},
            child: Text("Check Now",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeightManager.bold,
                    color: ColorManager.blueColor)),
          ),
        )
      ],
    );
  }
}
