import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../../provider/provider.dart';
import '../../../../resources/resources.dart';
import '../design_text.dart';

class BottumNavButton extends StatelessWidget {
  const BottumNavButton(
      {super.key,
      required this.label,
      required this.inDex,
      required this.onSelectImageAsset,
      required this.notSelectImageAsset});

  final String label;
  final int inDex;
  final String onSelectImageAsset;
  final String notSelectImageAsset;

  @override
  Widget build(BuildContext context) {
    return Consumer<BottumNavigation>(
      builder: (context, value, child) {
        return Column(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                if (value.contain.contains(inDex)) {
                  debugPrint("change");
                  value.change(inDex);
                } else {
                  debugPrint("else change");
                  value.contain.clear();
                  value.change(inDex);
                  value.add(inDex);
                }
              },
              icon: value.contain.contains(inDex)
                  ? SizedBox(
                      height: 25.h,
                      child: Image.asset(
                        onSelectImageAsset,
                        color: RGBColorManager.rgbDarkBlueColor,
                      ),
                    )
                  : SizedBox(
                      height: 23.h,
                      child: Image.asset(
                        notSelectImageAsset,
                        color: ColorManager.grey400Color,
                      ),
                    ),
            ),
            DesignText(
                text: label,
                fontSize: 10,
                color: value.contain.contains(inDex)
                    ? RGBColorManager.rgbDarkBlueColor
                    : ColorManager.grey400Color,
                padding: 0)
          ],
        );
      },
    );
  }
}
