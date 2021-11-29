import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/profile/services/leavesscreen.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:intl/intl.dart';
import 'package:studio_app_ui/widgets/customtxtfield.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../profile.dart';

class AddLeaveScreen extends StatefulWidget {
  @override
  _AddLeaveScreenState createState() => _AddLeaveScreenState();
}

class _AddLeaveScreenState extends State<AddLeaveScreen> {
  final int _value = 1;
  DateTimeRange? dateRange;
  bool status = false;

  String getFrom() {
    if (dateRange == null) {
      return 'Date start';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.start);
    }
  }

  String getUntil() {
    if (dateRange == null) {
      return 'Date end';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.end);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 35.h,
                    ),
                    Text(
                      "Add leaves",
                      style: black24textStylefont,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(children: [
                            Text(
                              "You will be unavailable for\nservices",
                              textAlign: TextAlign.center,
                              style: bigtextstyleregularhintcolor,
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            CustomNormalTextField(
                              width: 353.w,
                              // controller: model.emailController,
                              lableText: 'Title',
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please fill fields";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: null,
                              // onChanged: (value) => model.appUser.email = value,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () => pickDateRange(context),
                                  child: Container(
                                    constraints: const BoxConstraints(
                                      maxHeight: double.infinity,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: hintcolor.withOpacity(0.2)),
                                      borderRadius: BorderRadius.circular(10),
                                      color: whitecolor,
                                    ),
                                    width: 170.w,
                                    child: TextFormField(
                                      readOnly: true,
                                      cursorColor: btnColor,
                                      textAlign: TextAlign.left,
                                      decoration: InputDecoration(
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: InkWell(
                                            onTap: () => pickDateRange(context),
                                            child: SvgPicture.asset(
                                              "images/calander.svg",
                                              color: hintcolor,
                                            ),
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        errorStyle: const TextStyle(
                                            fontSize: 9.7,
                                            height: 0.06,
                                            color: Colors.red),
                                        hintText: getFrom(),
                                        hintStyle: hinttextStyle,
                                        contentPadding:
                                            const EdgeInsets.all(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: InkWell(
                                    onTap: () => pickDateRange(context),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                        maxHeight: double.infinity,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: hintcolor.withOpacity(0.2)),
                                        borderRadius: BorderRadius.circular(10),
                                        color: whitecolor,
                                      ),
                                      width: 170.w,
                                      child: InkWell(
                                        onTap: () => pickDateRange(context),
                                        child: TextFormField(
                                          readOnly: true,
                                          cursorColor: btnColor,
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            prefixIcon: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: InkWell(
                                                onTap: () =>
                                                    pickDateRange(context),
                                                child: SvgPicture.asset(
                                                  "images/calander.svg",
                                                  color: hintcolor,
                                                ),
                                              ),
                                            ),
                                            border: InputBorder.none,
                                            errorStyle: const TextStyle(
                                                fontSize: 9.7,
                                                height: 0.06,
                                                color: Colors.red),
                                            hintText: getUntil(),
                                            hintStyle: hinttextStyle,
                                            contentPadding:
                                                const EdgeInsets.all(20.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FlutterSwitch(
                                    height: 20.0,
                                    width: 40.0,
                                    padding: 4.0,
                                    toggleSize: 15.0,
                                    borderRadius: 10.0,
                                    activeColor: btnColor,
                                    value: status,
                                    onToggle: (value) {
                                      setState(() {
                                        status = value;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Don't disturb",
                                          style: black16textStylefont,
                                        ),
                                        Text(
                                          "You will not receive notifications,\n until you come back.",
                                          style: hinttextStyle,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomBtn(
                        txt: "SAVE",
                        onpress: () {
                          Get.offAll(() => Bottomnavigation());
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

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(hours: 24 * 3)),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      builder: (BuildContext buildContext, Widget? child) {
        return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: const ColorScheme.light(
                primary: btnColor,
                onPrimary: Colors.white,
                surface: btnColor,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.blue[900],
            ),
            child: child!);
      },
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange ?? initialDateRange,
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}
