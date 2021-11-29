import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/login/login.dart';
import 'package:studio_app_ui/privacypolicy/privacypolicy.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:studio_app_ui/widgets/customtxtfield.dart';

class AddBookingmanual extends StatefulWidget {
  @override
  _AddBookingmanualState createState() => _AddBookingmanualState();
}

class _AddBookingmanualState extends State<AddBookingmanual> {
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
    return Scaffold(
      key: _scaffoldKey,
      // body: Consumer<LoginScreenViewModel>(builder: (context, model, child) {
      //   return
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
                              height: 25.h,
                            ),
                            Text(
                              "Add Booking",
                              style: black24textStylefont,
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
                                    "Expert",
                                    style: black16textStylefont,
                                  ),
                                ),
                                CustomNormalTextField(
                                  width: 333.w,
                                  // controller: model.emailController,
                                  lableText: '',
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
                                    "Date",
                                    style: black16textStylefont,
                                  ),
                                ),
                                CustomNormalTextField(
                                  width: 333.w,
                                  // controller: model.emailController,
                                  lableText: '',
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
                                    "Number of Hours",
                                    style: black16textStylefont,
                                  ),
                                ),
                                CustomNormalTextField(
                                  width: 333.w,
                                  // controller: model.emailController,
                                  lableText: '',
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
                                    "Type of Service",
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
                              height: 45.h,
                            ),
                            CustomBtn(
                                txt: "DONE",
                                onpress: () {},
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
    );
  }
}
