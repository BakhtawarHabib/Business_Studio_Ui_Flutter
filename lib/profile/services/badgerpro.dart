import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/strings.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:studio_app_ui/widgets/customtxtfield.dart';

import 'addnewmember.dart';
import 'addservice.dart';
import 'editmember.dart';
import 'editservices.dart';

class BadgerProScreen extends StatefulWidget {
  @override
  _BadgerProScreenState createState() => _BadgerProScreenState();
}

class _BadgerProScreenState extends State<BadgerProScreen> {
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
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Text(
                      "Get my badge PRO",
                      style: black24textStylefont,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "N° siret company",
                                style: black20medium,
                              ),
                            ),
                            CustomNormalTextField(
                              width: 333.w,
                              // controller: model.emailController,
                              lableText: '06 05 0 5 0666',
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please fill fields";
                                } else {
                                  return null;
                                }
                              },
                              // onChanged: (value) => model.appUser.email = value,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Company's adresse",
                                style: black20medium,
                              ),
                            ),
                            CustomNormalTextField(
                              width: 333.w,
                              // controller: model.emailController,
                              lableText: 'Lorem ipsum uimo',
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please fill fields";
                                } else {
                                  return null;
                                }
                              },
                              // onChanged: (value) => model.appUser.email = value,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "N° TVA",
                                style: black20medium,
                              ),
                            ),
                            CustomNormalTextField(
                              width: 333.w,
                              // controller: model.emailController,
                              lableText: '06 05 0 5 0666',
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please fill fields";
                                } else {
                                  return null;
                                }
                              },
                              // onChanged: (value) => model.appUser.email = value,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomBtn(
                        txt: "SAVE",
                        onpress: () {
                          Get.offAll(Bottomnavigation());
                        },
                        height: 50.h,
                        width: 100.w),
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
