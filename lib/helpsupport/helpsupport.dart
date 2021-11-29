import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/widgets/bullet.dart';

class HelpSupportScreen extends StatefulWidget {
  const HelpSupportScreen({Key? key}) : super(key: key);

  @override
  _HelpSupportScreenState createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 100),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: btnColor,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 35.h,
                            ),
                            Center(
                              child: Text(
                                "Help & Support",
                                style: black24textStylefont,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "How Can We Help You?",
                              style: black20medium,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: hintcolor.withOpacity(0.1),
                                ),
                                child: ExpansionTile(
                                  iconColor: btnColor,
                                  collapsedIconColor: btnColor,
                                  collapsedTextColor: btnColor,
                                  collapsedBackgroundColor:
                                      hintcolor.withOpacity(0.1),
                                  backgroundColor: hintcolor.withOpacity(0.1),
                                  initiallyExpanded: _expanded,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxHeight: double.infinity,
                                      ),
                                      color: const Color(0xffF5F5F5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [],
                                      ),
                                    )
                                  ],
                                  title: const Text(
                                    "My Account",
                                    style: TextStyle(
                                        fontSize: 13.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: hintcolor.withOpacity(0.1),
                                ),
                                child: ExpansionTile(
                                  iconColor: btnColor,
                                  collapsedIconColor: btnColor,
                                  collapsedTextColor: btnColor,
                                  collapsedBackgroundColor:
                                      hintcolor.withOpacity(0.1),
                                  backgroundColor: hintcolor.withOpacity(0.1),
                                  initiallyExpanded: _expanded,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxHeight: double.infinity,
                                      ),
                                      color: const Color(0xffF5F5F5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [],
                                      ),
                                    )
                                  ],
                                  title: const Text(
                                    "Change Service Offers?",
                                    style: TextStyle(
                                        fontSize: 13.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: hintcolor.withOpacity(0.1),
                                ),
                                child: ExpansionTile(
                                  iconColor: btnColor,
                                  collapsedIconColor: btnColor,
                                  collapsedTextColor: btnColor,
                                  collapsedBackgroundColor:
                                      hintcolor.withOpacity(0.1),
                                  backgroundColor: hintcolor.withOpacity(0.1),
                                  initiallyExpanded: _expanded,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxHeight: double.infinity,
                                      ),
                                      color: const Color(0xffF5F5F5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [],
                                      ),
                                    )
                                  ],
                                  title: const Text(
                                    "Payment",
                                    style: TextStyle(
                                        fontSize: 13.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: hintcolor.withOpacity(0.1),
                                ),
                                child: ExpansionTile(
                                  iconColor: btnColor,
                                  collapsedIconColor: btnColor,
                                  collapsedTextColor: btnColor,
                                  collapsedBackgroundColor:
                                      hintcolor.withOpacity(0.1),
                                  backgroundColor: hintcolor.withOpacity(0.1),
                                  initiallyExpanded: _expanded,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxHeight: double.infinity,
                                      ),
                                      color: const Color(0xffF5F5F5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [],
                                      ),
                                    )
                                  ],
                                  title: const Text(
                                    "Vouchers",
                                    style: TextStyle(
                                        fontSize: 13.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "FAQ",
                              style: black20medium,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: whitecolor,
                                ),
                                child: ExpansionTile(
                                  iconColor: btnColor,
                                  collapsedIconColor: btnColor,
                                  collapsedTextColor: btnColor,
                                  collapsedBackgroundColor: whitecolor,
                                  backgroundColor: whitecolor,
                                  initiallyExpanded: _expanded,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxHeight: double.infinity,
                                      ),
                                      color: const Color(0xffF5F5F5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [],
                                      ),
                                    )
                                  ],
                                  title: Text(
                                    " 01.  How to add new services? ",
                                    style: black16textStylefont,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: whitecolor),
                                child: ExpansionTile(
                                  iconColor: btnColor,
                                  collapsedIconColor: btnColor,
                                  collapsedTextColor: btnColor,
                                  collapsedBackgroundColor: whitecolor,
                                  backgroundColor: whitecolor,
                                  initiallyExpanded: _expanded,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxHeight: double.infinity,
                                      ),
                                      color: const Color(0xffF5F5F5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [],
                                      ),
                                    )
                                  ],
                                  title: Text(
                                    " 02. How to create new coupons?",
                                    style: black16textStylefont,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: whitecolor),
                                child: ExpansionTile(
                                  iconColor: btnColor,
                                  collapsedIconColor: btnColor,
                                  collapsedTextColor: btnColor,
                                  collapsedBackgroundColor: whitecolor,
                                  backgroundColor: whitecolor,
                                  initiallyExpanded: _expanded,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxHeight: double.infinity,
                                      ),
                                      color: const Color(0xffF5F5F5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 61.h,
                                            width: 315.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color:
                                                    hintcolor.withOpacity(0.1)),
                                            child: Text(
                                              "Contrary to popular belief, Lorem Ipsum is not ",
                                              style: hinttextStyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                  title: Text(
                                    " 03. Open support ticket?",
                                    style: black16textStylefont,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: whitecolor,
                                ),
                                child: ExpansionTile(
                                  iconColor: btnColor,
                                  collapsedIconColor: btnColor,
                                  collapsedTextColor: btnColor,
                                  collapsedBackgroundColor: whitecolor,
                                  backgroundColor: whitecolor,
                                  initiallyExpanded: _expanded,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxHeight: double.infinity,
                                      ),
                                      color: const Color(0xffF5F5F5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [],
                                      ),
                                    )
                                  ],
                                  title: Text(
                                    "04.   How to add new expert?",
                                    style: black16textStylefont,
                                  ),
                                ),
                              ),
                            ),
                          ])))
            ]),
          )),
    );
  }
}
