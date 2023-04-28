import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/ui/screens/reuse_widget/reuse_widget.dart';
import '../../../resources/resources.dart';

class BoxDesign extends StatelessWidget {
  const BoxDesign({
    super.key,
    required this.image,
    required this.name,
    required this.work,
  });

  final String image;
  final String name;
  final String work;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    image: AssetImage(image),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 140.w,
                        child: DesignText(
                            text: name,
                            fontSize: 13,
                            color: ColorManager.blackColor,
                            padding: 0),
                      ),
                      const Spacer(),
                      IconButton(
                          padding: const EdgeInsets.all(5),
                          constraints: const BoxConstraints(),
                          onPressed: () {},
                          icon: Image.asset(
                            color: RGBColorManager.rgbDarkBlueColor,
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
                      text: work,
                      fontSize: 12,
                      color: ColorManager.grey400Color,
                      padding: 0),
                  Container(
                    margin: const EdgeInsets.only(top: 5).r,
                    width: 125.w,
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          IconsAssets.ratingIcon,
                          height: 13.h,
                          color: RGBColorManager.rgbBlueColor,
                        ),
                        DesignText(
                            text: "4.3 (5,735 reviews) ",
                            fontSize: 10.5,
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
    );
  }
}
