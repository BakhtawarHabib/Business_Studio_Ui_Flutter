import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';

class SendedMessageWidget extends StatelessWidget {
  final String content;
  final String time;

  SendedMessageWidget({
    required this.content,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 8.0, left: 50.0, top: 4.0, bottom: 4.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15)),
              child: Container(
                color: btnColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 12.0, left: 23.0, top: 8.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        content,
                        style: normaltextStylefonwhite,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                        child: Text(
                          time,
                          style: white12normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
