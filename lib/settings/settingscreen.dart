import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/strings.dart';
import 'package:studio_app_ui/constants/styles.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 100),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: btnColor,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 35.h,
                            ),
                            Center(
                              child: Text(
                                "Settings",
                                style: black24textStylefont,
                              ),
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Column(
                              children: List.generate(
                                settingsicons.length,
                                (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      settingsnavigation[
                                                          index]));
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  settingsicons[index],
                                                  height: 40,
                                                  color: btnColor,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  settingsnames[index],
                                                  style: black16textStylefont,
                                                )
                                              ],
                                            ),
                                            InkWell(
                                                onTap: () {},
                                                child: const Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.black,
                                                ))
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: hintcolor.withOpacity(0.3),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ])))
            ]),
          )),
    );
  }
}
