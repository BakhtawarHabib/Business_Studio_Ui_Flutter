import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/screen_util.dart';
import 'package:studio_app_ui/constants/styles.dart';

class Socialbtn extends StatelessWidget {
  const Socialbtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 42.h,
      width: 333.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: btnColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset("images/google.svg"),
          Text(
            "Continue with Google",
            style: normaltextStylefontblck,
          ),
        ],
      ),
    );
  }
}
