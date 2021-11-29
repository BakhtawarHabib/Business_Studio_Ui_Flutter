import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';

class ReceivedMessageWidget extends StatelessWidget {
  final String content;

  final String time;

  ReceivedMessageWidget({
    required this.content,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            child: Padding(
          padding: const EdgeInsets.only(
              right: 75.0, left: 8.0, top: 8.0, bottom: 8.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15)),
            child: Container(
              color: hintcolor.withOpacity(0.4),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 8.0, left: 8.0, top: 8.0, bottom: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      content,
                      style: normaltextStylefontblck,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        time,
                        style: smalltextStylefontgrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )),
      ],
    );
  }
}
