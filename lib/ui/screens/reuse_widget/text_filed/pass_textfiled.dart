import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../../resources/resources.dart';


// this is login and signup screen password text field
class PassField extends StatefulWidget {

  final TextEditingController textPassCtrl;
  final String hintText;
  final String iconAsset;
  final double height;

  PassField(
      {required this.hintText,
        required this.textPassCtrl,
        required this.iconAsset,
        required this.height,
      });

  @override
  State<PassField> createState() => _PassFieldState();
}

class _PassFieldState extends State<PassField> {
  bool obSure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      margin: const EdgeInsets.only(top: 20).r,
      padding: const EdgeInsets.only(left: 20, right: 20).r,
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.greyColor,width: 1),
          borderRadius: BorderRadius.circular(20).w),
      child: Row(
        children: [
          Image.asset(
            widget.iconAsset,
            height: widget.height.h,
          ),
          Expanded(
              child: TextFormField(
                obscureText: obSure,
                controller: widget.textPassCtrl,
                decoration: InputDecoration(
                    hintText: widget.hintText,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 15).r),
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  obSure = !obSure;
                });
              },
              icon: obSure
                  ? Image.asset(IconsAssets.hiddenIcon,height: 25.h,)
                  : Image.asset(IconsAssets.visibleIcon,height: 25.h,))
        ],
      ),
    );
  }
}