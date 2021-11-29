import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';

import 'custombtn.dart';

void acceptdialog(BuildContext context) {
  int selectedRadio = 1;
  Dialog fancyDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    child:
        StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
      return Container(
        decoration: BoxDecoration(
          color: whitecolor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        height: 400.0,
        width: 400.0,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: whitecolor,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                "Accept the request",
                style: bigtextstyleregular,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "I agree to honor the appointment on :",
                    style: normalblacktextStylefont,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 100.h,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: whitecolor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Monday 6th April at 18h",
                            style: hinttextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomBtn(
                      txt: "ACCEPT",
                      onpress: () {
                        Navigator.pop(context);
                      },
                      height: 50.h,
                      width: 155.w)
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Align(
              // These values are based on trial & error method
              alignment: const Alignment(1.05, -1.05),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff707070),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: whitecolor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }),
  );
  showDialog(context: context, builder: (BuildContext context) => fancyDialog);
}

void canceldialog(
  BuildContext context,
) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            content: Container(
                decoration: const BoxDecoration(
                  color: whitecolor,
                ),
                width: 246.0.w,
                height: 250.h, // Change as per your requirement
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Cancel",
                      style: bigtextstyleregular,
                    ),
                    Text(
                      "Are you sure to canel ?",
                      style: black16textStylefont,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomBtn(
                            txt: "YES",
                            onpress: () {
                              Navigator.pop(context);
                            },
                            height: 50.h,
                            width: 112.w),
                        CustomBtn(
                            txt: "NO",
                            onpress: () {
                              Navigator.pop(context);
                            },
                            height: 50.h,
                            width: 112.w)
                      ],
                    )
                  ],
                )));
      });
}

void canceldialogg(BuildContext context) {
  int selectedRadio = 1;
  Dialog fancyDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    child:
        StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
      return Container(
        decoration: BoxDecoration(
          color: whitecolor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        height: 300.0,
        width: 300.0,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: whitecolor,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cancel",
                      style: bigtextstyleregular,
                    ),
                    Text(
                      "Are you sure to canel ?",
                      style: normalblacktextStylefont,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomBtn(
                            txt: "YES",
                            onpress: () {
                              Navigator.pop(context);
                            },
                            height: 50.h,
                            width: 112.w),
                        CustomBtn(
                            txt: "NO",
                            onpress: () {
                              Navigator.pop(context);
                            },
                            height: 50.h,
                            width: 112.w)
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Align(
              // These values are based on trial & error method
              alignment: const Alignment(1.05, -1.05),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff707070),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: whitecolor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }),
  );
  showDialog(context: context, builder: (BuildContext context) => fancyDialog);
}
