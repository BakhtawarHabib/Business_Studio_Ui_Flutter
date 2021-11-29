import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:intl/intl.dart';
import 'package:studio_app_ui/widgets/customtxtfield.dart';
import 'package:flutter_switch/flutter_switch.dart';

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 40),
          height: MediaQuery.of(context).size.height,
          color: btnColor,
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          color: whitecolor,
                          size: 20,
                        ),
                        Text(
                          "Back",
                          style: GoogleFonts.roboto(
                              color: whitecolor, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Gallery",
                        style: black24textStylefont,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: MediaQuery.of(context).size.width,
                        height: 200.h,
                        color: hintcolor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "images/remove.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: MediaQuery.of(context).size.width,
                        height: 200.h,
                        color: hintcolor,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset(
                                      "images/remove.svg",
                                      height: 30,
                                      width: 30,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 50.h,
                                ),
                                // const Icon(
                                //   Icons.add,
                                //   color: whitecolor,
                                //   size: 40,
                                // )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: MediaQuery.of(context).size.width,
                        height: 200.h,
                        color: hintcolor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "images/remove.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomBtn(
                          txt: "ADD PICTURE +",
                          onpress: () {},
                          height: 50.h,
                          width: 335.w),
                    ]))
              ]))),
    );
  }
}
