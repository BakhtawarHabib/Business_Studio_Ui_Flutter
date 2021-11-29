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

import '../widgets/customtxtfield.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _passwordVisible = false;
  int _radioValue = 0;
  @override
  // ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
                              "Change Password",
                              style: black24textStylefont,
                            ),
                            SizedBox(
                              height: 15.h,
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
                                    "Old Password",
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
                                    keyboardType: TextInputType.text,
                                    //  controller: _userPasswordController,
                                    obscureText:
                                        !_passwordVisible, //This will obscure text dynamically

                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child:
                                            SvgPicture.asset("images/lock.svg"),
                                      ),
                                      border: InputBorder.none,
                                      errorStyle: const TextStyle(
                                          fontSize: 9.7,
                                          height: 0.06,
                                          color: Colors.red),
                                      hintText: "Type Password",
                                      hintStyle: hinttextStyle,
                                      contentPadding:
                                          const EdgeInsets.all(20.0),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          // Based on passwordVisible state choose the icon
                                          _passwordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                        ),
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
                                          setState(() {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "New Password",
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
                                    keyboardType: TextInputType.text,
                                    //  controller: _userPasswordController,
                                    obscureText:
                                        !_passwordVisible, //This will obscure text dynamically

                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child:
                                            SvgPicture.asset("images/lock.svg"),
                                      ),
                                      border: InputBorder.none,
                                      errorStyle: const TextStyle(
                                          fontSize: 9.7,
                                          height: 0.06,
                                          color: Colors.red),
                                      hintText: "Type Password",
                                      hintStyle: hinttextStyle,
                                      contentPadding:
                                          const EdgeInsets.all(20.0),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          // Based on passwordVisible state choose the icon
                                          _passwordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                        ),
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
                                          setState(() {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Confirm Password",
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
                                    keyboardType: TextInputType.text,
                                    //  controller: _userPasswordController,
                                    obscureText:
                                        !_passwordVisible, //This will obscure text dynamically

                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child:
                                            SvgPicture.asset("images/lock.svg"),
                                      ),
                                      border: InputBorder.none,
                                      errorStyle: const TextStyle(
                                          fontSize: 9.7,
                                          height: 0.06,
                                          color: Colors.red),
                                      hintText: "Type Password",
                                      hintStyle: hinttextStyle,
                                      contentPadding:
                                          const EdgeInsets.all(20.0),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          // Based on passwordVisible state choose the icon
                                          _passwordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                        ),
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
                                          setState(() {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomBtn(
                                txt: "CHANGE PASSWORD",
                                onpress: () {
                                  Get.to(() => GeneralInformation());
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
