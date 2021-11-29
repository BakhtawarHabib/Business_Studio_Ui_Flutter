import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/profile/profile.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';

class FeaturesScreen extends StatefulWidget {
  @override
  _FeaturesScreenState createState() => _FeaturesScreenState();
}

class _FeaturesScreenState extends State<FeaturesScreen> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    Center(
                      child: Text(
                        "Features",
                        style: black24textStylefont,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        "Bricolage",
                        style: mediumhintcolorstyle,
                      ),
                    ),
                    Wrap(
                      children: [
                        _myChip(1, 'petit bericolage'),
                        _myChip(2, 'plombieried'),
                        _myChip(3, 'Renovation et sj'),
                        _myChip(4, 'Electric et domotique'),
                        // _myChip(5, 'Something'),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        "Bricole",
                        style: mediumhintcolorstyle,
                      ),
                    ),
                    Wrap(
                      children: [
                        _myChip2(1, 'petit bericolage'),
                        _myChip2(2, 'plombieried'),

                        // _myChip(5, 'Something'),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        "Garde",
                        style: mediumhintcolorstyle,
                      ),
                    ),
                    Wrap(
                      children: [
                        _myChip3(1, 'petit bericolage'),
                        _myChip3(2, 'plombieried'),

                        // _myChip(5, 'Something'),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        "Aurtes",
                        style: mediumhintcolorstyle,
                      ),
                    ),
                    Wrap(
                      children: [
                        _myChip4(1, 'petit bericolage'),
                        _myChip4(2, 'plombieried'),
                        _myChip4(3, 'Renovation et sj'),
                        _myChip4(4, 'Electric et domotique'),
                        // _myChip(5, 'Something'),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: CustomBtn(
                          txt: "SAVE",
                          onpress: () {
                            Get.offAll(() => Bottomnavigation());
                          },
                          height: 50.h,
                          width: 300.w),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int selectedChip = 1;
  Widget _myChip(int number, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: selectedChip == number ? btnColor : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Chip(
              label: Text(
                name,
                style: GoogleFonts.roboto(
                    color: selectedChip == number ? btnColor : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              backgroundColor: selectedChip == number
                  ? hintcolor.withOpacity(0.2)
                  : hintcolor.withOpacity(0.3)),
        ),
        onTap: () {
          setState(() {
            selectedChip = number;
          });
        },
      ),
    );
  }

  int selectedChip2 = 1;
  Widget _myChip2(int number, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: selectedChip2 == number ? btnColor : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Chip(
              label: Text(
                name,
                style: GoogleFonts.roboto(
                    color: selectedChip2 == number ? btnColor : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              backgroundColor: selectedChip2 == number
                  ? hintcolor.withOpacity(0.2)
                  : hintcolor.withOpacity(0.3)),
        ),
        onTap: () {
          setState(() {
            selectedChip2 = number;
          });
        },
      ),
    );
  }

  int selectedChip3 = 1;
  Widget _myChip3(int number, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: selectedChip3 == number ? btnColor : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Chip(
              label: Text(
                name,
                style: GoogleFonts.roboto(
                    color: selectedChip3 == number ? btnColor : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              backgroundColor: selectedChip3 == number
                  ? hintcolor.withOpacity(0.2)
                  : hintcolor.withOpacity(0.3)),
        ),
        onTap: () {
          setState(() {
            selectedChip3 = number;
          });
        },
      ),
    );
  }

  int selectedChip4 = 1;
  Widget _myChip4(int number, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: selectedChip4 == number ? btnColor : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Chip(
              label: Text(
                name,
                style: GoogleFonts.roboto(
                    color: selectedChip4 == number ? btnColor : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              backgroundColor: selectedChip4 == number
                  ? hintcolor.withOpacity(0.2)
                  : hintcolor.withOpacity(0.3)),
        ),
        onTap: () {
          setState(() {
            selectedChip4 = number;
          });
        },
      ),
    );
  }
}
