import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:studio_app_ui/changepassword/changepassword.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/strings.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/helpsupport/helpsupport.dart';
import 'package:studio_app_ui/login/login.dart';
import 'package:studio_app_ui/rateus/rateus.dart';
import 'package:studio_app_ui/requestinfo/requestinfopending.dart';
import 'package:studio_app_ui/settings/settingscreen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List navigationdrawer = [
    const SettingScreen(),
    // const HelpSupportScreen(),
    LoginScreen(),
  ];
  var scafoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldkey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: 100.h,
        // leading:
        leading: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset("images/drawer.svg"),
          ),
          onTap: () => scafoldkey.currentState?.openDrawer(),
        ),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset("images/appicon.png"),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff0681D5), Color(0xff000080)],
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                const CircleAvatar(
                  backgroundColor: hintcolor,
                  maxRadius: 55,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Business name",
                    style: white16font,
                  ),
                ),
                Container(height: 60.h),
                Column(
                  children: List.generate(
                      drawericnlist.length,
                      (index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        navigationdrawer[index]),
                              );
                            },
                            child: ListTile(
                              leading: SvgPicture.asset(
                                drawericnlist[index],
                                color: whitecolor,
                              ),
                              title: Text(
                                drawerlist[index],
                                style: white16font,
                              ),
                            ),
                          )),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: hintcolor.withOpacity(0.2),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Text(
                "Pending Requests",
                style: black24textStylefont,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              children: List.generate(
                  10,
                  (index) => InkWell(
                        onTap: () {
                          Get.to(() => const RequestInfoPendingScreen());
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            maxRadius: 25,
                            minRadius: 15,
                            backgroundColor: hintcolor.withOpacity(0.5),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fahima Khan",
                                  style: black16textStylefont,
                                ),
                                Text(
                                  "27 Dec 2020, 10:00pm ",
                                  style: smalltextStylefontgrey,
                                ),
                                Text(
                                  "Amount \$350",
                                  style: smalltextStylefontgrey,
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
