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
import 'package:studio_app_ui/signup/signup.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:studio_app_ui/widgets/socialbtn.dart';

import '../widgets/customtxtfield.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  int selectedRadio = 1;
  @override
  // ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
                              height: 15.h,
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Text(
                              "Sign In",
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
                                    "Email",
                                    style: black16textStylefont,
                                  ),
                                ),
                                CustomEmailTextField(
                                  width: 333.w,
                                  // controller: model.emailController,
                                  lableText: '',
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Please enter a valid email address.";
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
                                    "Password",
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
                                      hintText: "",
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
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Radio<int>(
                                        toggleable: true,
                                        value: 1,
                                        groupValue: selectedRadio,
                                        onChanged: (value) {
                                          setState(() =>
                                              selectedRadio = value.hashCode);
                                        },
                                      ),
                                      Text(
                                        "Remember me",
                                        style: hinttextStyle,
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      forgotpassworddialog(context);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        "Forgot Password?",
                                        style: hinttextStyle,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomBtn(
                                txt: "SIGN IN ACCOUNT",
                                onpress: () {
                                  Get.off(() => const Bottomnavigation());
                                },
                                height: 50.h,
                                width: 335.w),
                            SizedBox(
                              height: 35.h,
                            ),
                            Socialbtn(),
                            SizedBox(
                              height: 35.h,
                            ),
                            InkWell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "If you have no an account?",
                                    style: hinttextStyle,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => SignUp());
                                    },
                                    child: Text(" Sign Up",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14.sp,
                                            color: const Color(0xff931E8B))),
                                  )
                                ],
                              ),
                            )
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

  void forgotpassworddialog(
    BuildContext context,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              insetPadding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              content: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: whitecolor,
                  ),
                  width: 246.0.w,
                  height: 300.h, // Change as per your requirement
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                          child: Text("Forgot Password",
                              style: black24textStylefont)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Email",
                              style: black16textStylefont,
                            ),
                          ),
                          CustomEmailTextField(
                            width: 333.w,
                            // controller: model.emailController,
                            lableText: 'demo@gmail.com',
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter a valid email address.";
                              } else {
                                return null;
                              }
                            },
                            // onChanged: (value) => model.appUser.email = value,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomBtn(
                              txt: "SEND CODE",
                              onpress: () {},
                              height: 50.h,
                              width: 335.w),
                        ],
                      ),
                    ],
                  )));
        });
  }
}
