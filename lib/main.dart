import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/dashboard/dashboard.dart';
import 'package:studio_app_ui/login/login.dart';
import 'package:studio_app_ui/signup/signup.dart';

import 'bottomnavigation/bottomnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 851),
      builder: () => const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Get.off(
              () => OnboardingScreen(),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/splash.png"))),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("images/appicon.png"),
        ],
      ),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 13.0,
      width: 25.0,
      decoration: BoxDecoration(
        color: isActive
            ? const Color(0xFF000080)
            : const Color(0xFF000080).withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 600.0,
                    child: PageView(
                      physics: const ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "images/star.png",
                                height: 250,
                                width: 250,
                              ),
                              SizedBox(height: 35.h),
                              Text(
                                'Increase its visibility',
                                style: bigtextstyleregular,
                              ),
                              SizedBox(height: 20.0.h),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'List your activity for free.Take advantage of the flow of visitors, and this new means of \ncommunication to strengthen your image.',
                                  style: normalblacktextStylefont,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "images/time.png",
                                height: 250,
                                width: 250,
                              ),
                              SizedBox(height: 35.h),
                              Text(
                                'Save time',
                                style: bigtextstyleregular,
                              ),
                              SizedBox(height: 20.0.h),
                              Text(
                                'The platform is made for you, to facilitate the management of daily sessions. This will give you more time for other activities related to your business.',
                                style: normalblacktextStylefont,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "images/inncome.png",
                                height: 250,
                                width: 250,
                              ),
                              SizedBox(height: 35.h),
                              Text(
                                'Increase your income',
                                style: bigtextstyleregular,
                              ),
                              SizedBox(height: 20.0.h),
                              Text(
                                'With the increase of your frequentation, and the acquisition of new customers, your turnover will be amplified.',
                                style: normalblacktextStylefont,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 40.h),
                              InkWell(
                                onTap: () {
                                  Get.to(() => Bottomnavigation());
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50.h,
                                  width: 195.w,
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
                                  child: Text(
                                    "GET STARTED",
                                    style: normaltextStylefont,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  _currentPage != _numPages ? Text('') : Text(''),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
