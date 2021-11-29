import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:studio_app_ui/widgets/customtxtfield.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void forgotpassworddialog(
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
                  height: 89.h, // Change as per your requirement
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                          child: Text("Forgot Password",
                              style: black24textStylefont)),
                      SizedBox(
                        height: 5.h,
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
                          CustomBtn(
                              txt: "SIGN IN ACCOUNT",
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
