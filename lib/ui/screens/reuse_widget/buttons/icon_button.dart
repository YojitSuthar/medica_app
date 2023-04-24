import 'package:flutter/material.dart';


class IcnButton extends StatelessWidget {
  const IcnButton({
    super.key,
    required this.onPressed,
    required this.iconAsset,
  });

  final VoidCallback onPressed;
  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(iconAsset,height: 28,),
    );
  }
}
