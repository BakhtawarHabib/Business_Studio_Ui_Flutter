import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';

class CustomBtn extends StatelessWidget {
  String txt;
  VoidCallback onpress;
  double height;
  double width;
  CustomBtn(
      {required this.txt,
      required this.onpress,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff0681D5), Color(0xff000080)],
            )),
        child: Text(
          txt,
          style: normaltextStylefont,
        ),
        height: height.h,
        width: width.w,
      ),
    );
  }
}
