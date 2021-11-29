import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/login/login.dart';
import 'package:studio_app_ui/privacypolicy/privacypolicy.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:studio_app_ui/widgets/customtxtfield.dart';

class EditBankScreen extends StatefulWidget {
  @override
  _EditBankScreenState createState() => _EditBankScreenState();
}

class _EditBankScreenState extends State<EditBankScreen> {
  GlobalKey formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
                              "Edit my bank account",
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
                                    "Name ",
                                    style: black16textStylefont,
                                  ),
                                ),
                                CustomNormalTextField(
                                  width: 333.w,
                                  // controller: model.emailController,
                                  lableText: 'Holder Name',
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
                                    "IBAN",
                                    style: black16textStylefont,
                                  ),
                                ),
                                CustomNormalTextField(
                                  width: 333.w,
                                  // controller: model.emailController,
                                  lableText: '1234   5678   9900',
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
                                    "BIC",
                                    style: black16textStylefont,
                                  ),
                                ),
                                CustomNormalTextField(
                                  width: 333.w,
                                  // controller: model.emailController,
                                  lableText: '23302',
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
                              height: 45.h,
                            ),
                            CustomBtn(
                                txt: "SAVE",
                                onpress: () {
                                  Get.offAll(() => Bottomnavigation());
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
}
