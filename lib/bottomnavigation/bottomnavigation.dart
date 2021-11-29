import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studio_app_ui/booking/bookingscreen.dart';
import 'package:studio_app_ui/calander/calander.dart';
import 'package:studio_app_ui/chat/chatlistscreen.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/dashboard/dashboard.dart';
import 'package:studio_app_ui/profile/profile.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _mole = 0;
  // int _currentIndex = 0;
  final tabs = [
    const DashBoardScreen(),
    MyBookingsScreen(),
    ChatListScreen(),
    CalenderScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          iconSize: 30.h,
          type: BottomNavigationBarType.fixed,
          backgroundColor: btnColor,
          currentIndex: _mole,
          onTap: (index) {
            setState(() {
              _mole = index;
            });
          },
          selectedFontSize: 15,
          unselectedFontSize: 15,
          selectedItemColor: btnColor,
          unselectedItemColor: whitecolor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: btnColor,
              activeIcon: SvgPicture.asset("images/activehome.svg"),
              icon: SvgPicture.asset("images/home.svg"),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: btnColor,
              activeIcon: SvgPicture.asset("images/activebooking.svg"),
              icon: SvgPicture.asset("images/booking.svg"),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: btnColor,
              activeIcon: SvgPicture.asset("images/activechat.svg"),
              icon: SvgPicture.asset("images/chat.svg"),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: btnColor,
              activeIcon: SvgPicture.asset("images/activecalander.svg"),
              icon: SvgPicture.asset("images/calander.svg"),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: btnColor,
              activeIcon: SvgPicture.asset("images/activeprofile.svg"),
              icon: SvgPicture.asset("images/profile.svg"),
              label: '',
            ),
          ],
        ),
      ),
      body: tabs[_mole],
    );
  }
}
