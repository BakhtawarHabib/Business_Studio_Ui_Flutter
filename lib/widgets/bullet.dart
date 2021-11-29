import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studio_app_ui/constants/colors.dart';

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.0.h,
      width: 15.0.w,
      decoration: const BoxDecoration(
        color: purplecolor,
        shape: BoxShape.circle,
      ),
    );
  }
}
