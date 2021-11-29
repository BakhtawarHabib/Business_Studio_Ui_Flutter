import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/generalinfo/generalinfo.dart';
import 'package:studio_app_ui/privacypolicy/privacypolicy.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';

class InvoiceScreen extends StatefulWidget {
  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        height: MediaQuery.of(context).size.height,
        color: btnColor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
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
                        style:
                            GoogleFonts.roboto(color: whitecolor, fontSize: 14),
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Invoice",
                      style: bigtextstyleregular,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 240,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "N° Invoice",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "AB-0012805",
                                    style: black16textStylefont,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name & First name",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "Josifa Mariya",
                                    style: black16textStylefont,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Customer ID",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "78451K",
                                    style: black16textStylefont,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Date",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "22 Dec,2020",
                                    style: black16textStylefont,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Duration",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "6h",
                                    style: black16textStylefont,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 240,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Studio name",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "JoJo stud",
                                    style: black16textStylefont,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Phone",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "5968 - 489 -789",
                                    style: black16textStylefont,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Expert",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "Thisha Khan",
                                    style: black16textStylefont,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Time",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "15:21 PM",
                                    style: black16textStylefont,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amount",
                                    style: hinttextStyle,
                                  ),
                                  Text(
                                    "\$250",
                                    style: black16textStylefont,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ],
                    ),
                    Container(
                      height: 50.h,
                    ),
                    CustomBtn(
                        txt: "DOWNLOAD",
                        onpress: () {},
                        height: 50.h,
                        width: 315.w),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomBtn(
                        txt: "DELETE",
                        onpress: () {},
                        height: 50.h,
                        width: 315.w)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
