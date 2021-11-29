import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/generalinfo/generalinfo.dart';
import 'package:studio_app_ui/login/login.dart';
import 'package:studio_app_ui/privacypolicy/privacypolicy.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:studio_app_ui/widgets/socialbtn.dart';

import '../widgets/customtxtfield.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = false;
  int _radioValue = 0;
  @override
  // ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int selectedRadio = 1;
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
                height: 10.h,
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
                              "Sign Up",
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "First Name",
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

                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      errorStyle: const TextStyle(
                                          fontSize: 9.7,
                                          height: 0.06,
                                          color: Colors.red),
                                      hintText: "",
                                      hintStyle: hinttextStyle,
                                      contentPadding: EdgeInsets.all(20.0),
                                      prefixIcon: IconButton(
                                        icon: Icon(Icons.person),
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
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
                                    "Last Name",
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

                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      errorStyle: const TextStyle(
                                          fontSize: 9.7,
                                          height: 0.06,
                                          color: Colors.red),
                                      hintText: "",
                                      hintStyle: hinttextStyle,
                                      contentPadding: EdgeInsets.all(20.0),
                                      prefixIcon: IconButton(
                                        icon: Icon(Icons.person),
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
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
                            // Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Text(
                            //         "Confirm Password",
                            //         style: black16textStylefont,
                            //       ),
                            //     ),
                            //     Container(
                            //       constraints: const BoxConstraints(
                            //         maxHeight: double.infinity,
                            //       ),
                            //       decoration: BoxDecoration(
                            //         border: Border.all(
                            //             color: hintcolor.withOpacity(0.2)),
                            //         borderRadius: BorderRadius.circular(10),
                            //         color: whitecolor,
                            //       ),
                            //       width: 333.w,
                            //       child: TextFormField(
                            //         keyboardType: TextInputType.text,
                            //         //  controller: _userPasswordController,
                            //         obscureText:
                            //             !_passwordVisible, //This will obscure text dynamically

                            //         decoration: InputDecoration(
                            //           prefixIcon: Padding(
                            //             padding: const EdgeInsets.all(15.0),
                            //             child:
                            //                 SvgPicture.asset("images/lock.svg"),
                            //           ),
                            //           border: InputBorder.none,
                            //           errorStyle: const TextStyle(
                            //               fontSize: 9.7,
                            //               height: 0.06,
                            //               color: Colors.red),
                            //           hintText: "Type Password",
                            //           hintStyle: hinttextStyle,
                            //           contentPadding:
                            //               const EdgeInsets.all(20.0),
                            //           suffixIcon: IconButton(
                            //             icon: Icon(
                            //               // Based on passwordVisible state choose the icon
                            //               _passwordVisible
                            //                   ? Icons.visibility
                            //                   : Icons.visibility_off,
                            //               color: Theme.of(context)
                            //                   .primaryColorDark,
                            //             ),
                            //             onPressed: () {
                            //               // Update the state i.e. toogle the state of passwordVisible variable
                            //               setState(() {
                            //                 _passwordVisible =
                            //                     !_passwordVisible;
                            //               });
                            //             },
                            //           ),
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Radio<int>(
                                    toggleable: true,
                                    value: 1,
                                    groupValue: selectedRadio,
                                    onChanged: (value) {
                                      setState(
                                          () => selectedRadio = value.hashCode);
                                    },
                                  ),
                                  Text(
                                    "I accept the ",
                                    style: hinttextStyle,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => const PrivacyPolicyScreen());
                                    },
                                    child: Text(
                                      "policy and privacy",
                                      style: GoogleFonts.roboto(
                                          fontSize: 14.sp,
                                          color: const Color(0xff931E8B)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomBtn(
                                txt: "NEXT",
                                onpress: () {
                                  // Get.to(() => GeneralInformation());
                                  _showVerifyEmailSentDialog();
                                },
                                height: 50.h,
                                width: 335.w),
                            SizedBox(
                              height: 25.h,
                            ),
                            Socialbtn(),
                            SizedBox(
                              height: 25.h,
                            ),
                            InkWell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account?",
                                    style: hinttextStyle,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => LoginScreen());
                                    },
                                    child: Text(" Sign In",
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

  void _showVerifyEmailSentDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(
            "Verify your account",
            style: black20medium,
          ),
          content:
              new Text("Link to verify account has been sent to your email"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Get.off(() => GeneralInformation());
              },
            ),
          ],
        );
      },
    );
  }
}
