import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';

class CustomAccountBox extends StatelessWidget {
  String image;
  String text;
  CustomAccountBox({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 110.w,
      height: 80.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            image,
            height: 25,
          ),
          Text(
            text,
            style: normalblacktextStylefont,
          )
        ],
      ),
      decoration: BoxDecoration(
          color: hintcolor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
