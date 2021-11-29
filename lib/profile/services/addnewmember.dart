import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:studio_app_ui/widgets/customtxtfield.dart';

import '../profile.dart';
import 'myteam.dart';

class AddNewMember extends StatefulWidget {
  @override
  _AddNewMemberState createState() => _AddNewMemberState();
}

class _AddNewMemberState extends State<AddNewMember> {
  GlobalKey formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> _locations = [
    'Hair Cut',
    'Hair Cut',
    'Videoediting',
    'Photography',
  ];

  String? _selectedLocation = "Hair Cut";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      // body: Consumer<LoginScreenViewModel>(builder: (context, model, child) {
      //   return
      body: Container(
        padding: const EdgeInsets.only(top: 15),
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
                child: Form(
                  key: formKey,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Text(
                              "Add an Expert",
                              style: black24textStylefont,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Expert Name",
                                    style: black16textStylefont,
                                  ),
                                ),
                                CustomNormalTextField(
                                  width: 333.w,
                                  // controller: model.emailController,
                                  lableText: 'Josifan Nilu',
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
                            SizedBox(
                              height: 10.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Specialities",
                                    style: black16textStylefont,
                                  ),
                                ),
                                Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: double.infinity,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: hintcolor.withOpacity(0.2)),
                                    borderRadius: BorderRadius.circular(10),
                                    color: whitecolor,
                                  ),
                                  width: 333.w,
                                  child: TextFormField(
                                    // controller: controller,

                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Please fill fields";
                                      } else {
                                        return null;
                                      }
                                    },
                                    cursorColor: btnColor,
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: DropdownButton<String>(
                                            underline: Text(""),
                                            items: _locations.map((String val) {
                                              return DropdownMenuItem<String>(
                                                value: val,
                                                child: Text(val),
                                              );
                                            }).toList(),
                                            onChanged: (newVal) {
                                              _selectedLocation = newVal;
                                              setState(() {});
                                            }),
                                      ),
                                      errorStyle: const TextStyle(
                                          fontSize: 9.7,
                                          height: 0.06,
                                          color: Colors.red),
                                      hintText: _selectedLocation,
                                      hintStyle: hinttextStyle,
                                      contentPadding:
                                          const EdgeInsets.all(20.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "About",
                                    style: black16textStylefont,
                                  ),
                                ),
                                Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: double.infinity,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: hintcolor.withOpacity(0.2)),
                                    borderRadius: BorderRadius.circular(10),
                                    color: whitecolor,
                                  ),
                                  width: 333.w,
                                  child: TextFormField(
                                    maxLines: 4,
                                    cursorColor: btnColor,
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      errorStyle: const TextStyle(
                                          fontSize: 9.7,
                                          height: 0.06,
                                          color: Colors.red),
                                      hintText:
                                          "Contrary to popular belief, Lorem Inosimplyrandom text. It has roots in a piece of classical Latin literature 45 BC, making it over 2000 years old.",
                                      hintStyle: hinttextStyle,
                                      contentPadding:
                                          const EdgeInsets.all(20.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 33, vertical: 10),
                                      child: Text(
                                        "Upload Image",
                                        style: black16textStylefont,
                                      ),
                                    ),
                                    Text("(Mix image size 90x90)",
                                        style: hinttextStyle)
                                  ],
                                ),
                                Container(
                                    height: 120.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: hintcolor.withOpacity(0.2)),
                                      borderRadius: BorderRadius.circular(10),
                                      color: whitecolor,
                                    ),
                                    width: 333.w,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: SvgPicture.asset(
                                          "images/insertimage.svg"),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 45.h,
                            ),
                            CustomBtn(
                                txt: "SAVE EXPERT",
                                onpress: () {
                                  addexpertdialog(context);
                                },
                                height: 50.h,
                                width: 335.w),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void addexpertdialog(
    BuildContext context,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              insetPadding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              content: Container(
                  decoration: BoxDecoration(
                    color: whitecolor,
                  ),
                  width: 246.0.w,
                  height: 383.h, // Change as per your requirement
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("images/checked.svg"),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Successfully New Expert\nAdded",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontSize: 20.sp,
                              color: btnColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 110.h,
                      ),
                      CustomBtn(
                        txt: "OK",
                        onpress: () {
                          Get.offAll(() => Bottomnavigation());
                        },
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                      )
                    ],
                  )));
        });
  }
}
