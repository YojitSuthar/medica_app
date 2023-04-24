import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../../provider/provider.dart';
import '../../../../resources/resources.dart';
import '../design_text.dart';

class BottumNavButton extends StatelessWidget {
   BottumNavButton({
    super.key,
     required this.label,
    required this.inDex,
    required this.onSelectImageAsset,
    required this.notSelectImageAsset
  });
  final String label;
  final int inDex;
  final String onSelectImageAsset;
  final String notSelectImageAsset;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<BottumNavigation>(builder: (context, value, child) {
          return IconButton(
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
                height: 30,
                child: Image.asset(
                  onSelectImageAsset,
                ),
              )
                  : SizedBox(
                height: 25,
                child: Image.asset(
                  notSelectImageAsset,
                ),
              ));
        }),
        DesignText(
            text: label,
            fontSize: 10,
            color: ColorManager.grey400Color,
            padding: 0)
      ],
    );
  }
}
