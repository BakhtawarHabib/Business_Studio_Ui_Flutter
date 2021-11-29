import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/widgets/bullet.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyScreenState createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: btnColor,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                height: 20.h,
              ),
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
                          "Privacy & Policy",
                          style: black24textStylefont,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Information We Collect Form You",
                        style: mediumblack20,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Contrary to popular belief, Lorem Inosimplyrandom and text. It has roots in a piece of classical Latin literature 45 BC, making it over 2000 years old. ",
                        style: hinttextStyle,
                      ),
                      ListTile(
                        leading: MyBullet(),
                        title: Text(
                          'Distracted by the readable content of a page when looking at its layout. ',
                          style: hinttextStyle,
                        ),
                      ),
                      ListTile(
                        leading: MyBullet(),
                        title: Text(
                          'Distracted by the readable content of a page when looking at its layout. ',
                          style: hinttextStyle,
                        ),
                      ),
                      Text(
                        "Services & Offers",
                        style: mediumblack20,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Contrary to popular belief, Lorem Inosimplyrandom and text. It has roots in a piece of classical Latin literature 45 BC, making it over 2000 years old. ",
                        style: hinttextStyle,
                      ),
                      ListTile(
                        leading: MyBullet(),
                        title: Text(
                          'Distracted by the readable content of a page when looking at its layout. ',
                          style: hinttextStyle,
                        ),
                      ),
                      ListTile(
                        leading: MyBullet(),
                        title: Text(
                          'Distracted by the readable content of a page when looking at its layout. ',
                          style: hinttextStyle,
                        ),
                      ),
                      Text(
                        "Driver Pass Price and Service Free",
                        style: mediumblack20,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Contrary to popular belief, Lorem Inosimplyrandom and text. It has roots in a piece of classical Latin literature 45 BC, making it over 2000 years old. ",
                        style: hinttextStyle,
                      ),
                      ListTile(
                        leading: MyBullet(),
                        title: Text(
                          'Distracted by the readable content of a page when looking at its layout. ',
                          style: hinttextStyle,
                        ),
                      ),
                      ListTile(
                        leading: MyBullet(),
                        title: Text(
                          'Distracted by the readable content of a page when looking at its layout. ',
                          style: hinttextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
