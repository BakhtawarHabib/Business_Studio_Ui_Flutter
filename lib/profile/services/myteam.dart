import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/strings.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'addnewmember.dart';
import 'editmember.dart';

class MyTeamScreen extends StatefulWidget {
  @override
  _MyTeamScreenState createState() => _MyTeamScreenState();
}

class _MyTeamScreenState extends State<MyTeamScreen> {
  GlobalKey formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
                      "Members List",
                      style: black24textStylefont,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Column(
                      children: [
                        Column(
                          children: List.generate(
                              5,
                              (index) => Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    height: 70.h,
                                    width: 343.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: hintcolor.withOpacity(0.1)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          chatimages[index]),
                                                      fit: BoxFit.cover),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10)),
                                                ),
                                                height: 70.h,
                                                width: 80.w),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  chatnames[index],
                                                  style: black16textStylefont,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Get.to(() => EditMemberScreen());
                                            },
                                            icon: const Icon(
                                              Icons.more_vert,
                                              size: 30,
                                              color: hintcolor,
                                            ))
                                      ],
                                    ),
                                  )),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.off(() => AddNewMember());
                          },
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff0681D5),
                                      Color(0xff000080)
                                    ],
                                  )),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ADD NEW MEMBER +",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              height: 50.h,
                              width: 335.w),
                        )
                      ],
                    )
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
