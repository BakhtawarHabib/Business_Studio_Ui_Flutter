import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';

class OpeningTimeScreen extends StatefulWidget {
  const OpeningTimeScreen({Key? key}) : super(key: key);

  @override
  _OpeningTimeScreenState createState() => _OpeningTimeScreenState();
}

class _OpeningTimeScreenState extends State<OpeningTimeScreen> {
  RangeValues _currentRangeValues = const RangeValues(6, 8);
  List days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
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
                        height: 35.h,
                      ),
                      Text(
                        "Openings time",
                        style: black24textStylefont,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Column(
                        children: [
                          Column(
                            children: List.generate(
                              6,
                              (index) => Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          days[index],
                                          style: bluebold14,
                                        ),
                                        Text(
                                          "6:00 - 18:30",
                                          style: normalblacktextStylefont,
                                        ),
                                        SvgPicture.asset("images/remove.svg")
                                      ],
                                    ),
                                  ),
                                  RangeSlider(
                                    activeColor: btnColor,
                                    inactiveColor: purplecolor,
                                    values: _currentRangeValues,
                                    min: 0,
                                    max: 12.0,
                                    divisions: 10,
                                    labels: RangeLabels(
                                      _currentRangeValues.start
                                              .round()
                                              .toString() +
                                          ".00",
                                      _currentRangeValues.end
                                              .round()
                                              .toString() +
                                          ".00",
                                    ),
                                    onChanged: (RangeValues values) {
                                      setState(() {
                                        _currentRangeValues = values;
                                      });
                                    },
                                  ),
                                  const Divider(
                                    thickness: 3,
                                    color: hintcolor,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sunday",
                                  style: bluebold14,
                                ),
                                Text(
                                  "Close",
                                  style: normalblacktextStylefont,
                                ),
                                SvgPicture.asset("images/add.svg")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          CustomBtn(
                              txt: "SAVE",
                              onpress: () {
                                Get.offAll(() => Bottomnavigation());
                              },
                              height: 50.h,
                              width: 100.w),
                        ],
                      )
                    ]),
                  )
                ]))));
  }
}
