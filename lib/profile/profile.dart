import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/profile/editprofile.dart';
import 'package:studio_app_ui/profile/services/badgerpro.dart';
import 'package:studio_app_ui/profile/services/editbank.dart';
import 'package:studio_app_ui/profile/services/features.dart';
import 'package:studio_app_ui/profile/services/gallery.dart';
import 'package:studio_app_ui/profile/services/generalinfo.dart';
import 'package:studio_app_ui/profile/services/leavesscreen.dart';
import 'package:studio_app_ui/profile/services/myteam.dart';
import 'package:studio_app_ui/profile/services/opeiningtime.dart';
import 'package:studio_app_ui/profile/services/reviewscreen.dart';
import 'package:studio_app_ui/profile/services/services.dart';
import 'package:studio_app_ui/rateus/rateus.dart';

import 'package:studio_app_ui/widgets/customaccountbox.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: btnColor, width: 2)),
                              child: const CircleAvatar(
                                backgroundColor: hintcolor,
                                maxRadius: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Studio 1",
                                style: black20medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Account",
                              style: black20medium,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(() => EditProfie());
                                    },
                                    child: CustomAccountBox(
                                      image: 'images/profileaccount.svg',
                                      text: 'Profile',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(() => EditBankScreen());
                                    },
                                    child: CustomAccountBox(
                                      image: 'images/wallet.svg',
                                      text: 'Bank',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Activity",
                              style: black20medium,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() => GeneralInfo());
                                  },
                                  child: CustomAccountBox(
                                    image: 'images/profileaccount.svg',
                                    text: 'General Info',
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => const OpeningTimeScreen());
                                  },
                                  child: CustomAccountBox(
                                    image: 'images/clockopen.svg',
                                    text: 'Openings time',
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(() => FeaturesScreen());
                                    },
                                    child: CustomAccountBox(
                                      image: 'images/Features.svg',
                                      text: 'Features',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() => LeavesScreen());
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 110.w,
                                    height: 80.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SvgPicture.asset(
                                          "images/leave.svg",
                                          height: 35,
                                        ),
                                        Text(
                                          "Leaves",
                                          style: normalblacktextStylefont,
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: hintcolor.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => Services());
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 110.w,
                                    height: 80.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          "images/service.png",
                                          height: 35,
                                        ),
                                        Text(
                                          "Services",
                                          style: normalblacktextStylefont,
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: hintcolor.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(() => MyTeamScreen());
                                    },
                                    child: CustomAccountBox(
                                      image: 'images/Team.svg',
                                      text: 'My team',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() => GalleryScreen());
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 110.w,
                                    height: 80.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          "images/gallery.png",
                                          height: 30,
                                        ),
                                        Text(
                                          "Pictures",
                                          style: normalblacktextStylefont,
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: hintcolor.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => ReviewScreen());
                                  },
                                  child: CustomAccountBox(
                                    image: 'images/rating.svg',
                                    text: 'Rating',
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(() => BadgerProScreen());
                                    },
                                    child: CustomAccountBox(
                                      image: 'images/badgepro.svg',
                                      text: 'Badge Pro',
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
