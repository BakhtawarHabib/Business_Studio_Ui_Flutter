import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/strings.dart';
import 'package:studio_app_ui/constants/styles.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: btnColor,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                height: 20.h,
              ),
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
                                "Notifications",
                                style: black24textStylefont,
                              ),
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Column(
                              children: List.generate(
                                3,
                                (index) => Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff0681D5),
                                            Color(0xff000080)
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: ListTile(
                                      leading: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            notificationstitle[index],
                                            style: whitemediumstyle,
                                          ),
                                          Wrap(
                                            children: [
                                              Text(
                                                notificationssubtitle[index],
                                                style: white12medium,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      trailing: Text(
                                        notificationstime[index],
                                        style: white12medium,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ])))
            ]),
          )),
    );
  }
}
