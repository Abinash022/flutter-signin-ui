
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_design/pallete.dart';

class SocialButtons extends StatelessWidget {
  final String iconPaths;
  final String labels;
  final double horizontalPadding;
   const SocialButtons({Key? key,
     required this.iconPaths,
     required this.labels,
     this.horizontalPadding=100,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: (){},
        icon: SvgPicture.asset(
          iconPaths,
          width: 25,
          color: Pallete.whiteColor,
        ),
        label: Text(
          labels,
          style: const TextStyle(
            color: Pallete.whiteColor,
            fontSize: 17,
          ),
        ),
      style: TextButton.styleFrom(
        padding:  EdgeInsets.symmetric(vertical: 30,horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side:const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
