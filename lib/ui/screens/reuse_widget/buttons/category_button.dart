import 'package:flutter/material.dart';
import 'package:medica/resources/import_resources.dart';
import '../../../../provider/provider.dart';
import '../../../../resources/resources.dart';

// this are the category buttons

class CategoryButton extends StatelessWidget {
  final String label;
  final int index;

  CategoryButton({Key? key, required this.label,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onTap = Provider.of<ChangeColor>(context, listen: false);
    return Container(
        margin: const EdgeInsets.only(right: 8).r,
        child: Consumer<ChangeColor>(builder: (context,value,child){
          return ElevatedButton(
            onPressed: () {
              if(value.data.contains(index)){
                value.remove(index);
              }else{
                value.data.clear();
                value.add(index);
              }
            },
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor:
                value.data.contains(index) ? RGBColorManager.rgbBlueColor : ColorManager.whiteColor,
                side: BorderSide(width: 1.w, color: RGBColorManager.rgbBlueColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0).w)),
            child: Text(
              label,
              style: fontWeightSizeColorTextStyle(
                FontWeightManager.bold,
                11.sp,
                value.data.contains(index) ? ColorManager.whiteColor : RGBColorManager.rgbBlueColor,
              ),
            ),
          );
        },)
    );
  }
}
