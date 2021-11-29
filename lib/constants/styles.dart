// import 'package:crypto_ui/constants/colors.dart' as global;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'screen_util.dart';

// final TextStyle textStyleOnboarding =
//     TextStyle(fontSize: 27.sp, fontFamily: 'Poppins');

// final TextStyle textStyleOnboarding2 =
//     TextStyle(fontSize: 14.sp, fontFamily: 'Poppins-Medium');

// final TextStyle textStyleAuthenticationTitle =
//     TextStyle(fontSize: 24.sp, fontFamily: 'Poppins', color: global.baseColor);

// final TextStyle textStyleAuthenticationText = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Poppins-Regular', color: global.blackColor);

// final TextStyle btntextStyleLable = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Roboto-Regular', color: global.whiteColor);

// final TextStyle textStyleForgotPassword = TextStyle(
//     fontSize: 15.sp,
//     fontFamily: 'Roboto-Regular',
//     color: global.forgotPasswordColor);

// final TextStyle textStyleAuthenticationButton = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Roboto-Bold', color: global.whiteColor);

// final TextStyle textStyleAccount = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Roboto-Regular', color: global.lableColor);

// final TextStyle textStyleRegisterLogin = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Roboto-Regular', color: global.baseColor);

// final TextStyle textStyleAppbarTitle = TextStyle(
//     fontSize: 18.sp, fontFamily: 'Roboto-Bold', color: global.whiteColor);

// final TextStyle textStyleUserProfile = TextStyle(
//     fontSize: 13.sp,
//     fontFamily: 'Archivo',
//     fontWeight: FontWeight.bold,
//     color: global.profileNameColor);
// final TextStyle textStyleTimeStamp = TextStyle(
//     fontSize: 12.sp,
//     fontFamily: 'Archivo-Regular',
//     color: global.profileNameColor);

// final TextStyle textLikeCount = TextStyle(
//     fontSize: 11.sp,
//     fontFamily: 'Archivo-Regular',
//     color: global.profileNameColor);

// final TextStyle textImageCount = TextStyle(
//     fontSize: 11.sp, fontFamily: 'Archivo-Regular', color: global.whiteColor);

// final TextStyle textStyleProfileName = TextStyle(
//     fontSize: 30.sp, fontFamily: 'Archivo', color: global.profileNameColor);

// final TextStyle textStyleContributer = TextStyle(
//     fontSize: 13.sp, fontFamily: 'Archivo', color: global.forgotPasswordColor);

// final TextStyle textStylePofilePostCount = TextStyle(
//     fontSize: 26.sp,
//     fontFamily: 'Archivo',
//     color: global.profilePostCountColor);

// final TextStyle textStyleCount = TextStyle(
//     fontSize: 13.sp, fontFamily: 'Archivo-Regular', color: global.countColor);
// final TextStyle textStyleActivityPost = TextStyle(
//     fontSize: 13.sp, fontFamily: 'Poppins', color: global.profileActvityColor);

// final TextStyle textStyleAddLocation =
//     TextStyle(fontSize: 11.sp, fontFamily: 'Archivo', color: global.baseColor);

// final TextStyle textStyleDecsriptionText = TextStyle(
//     fontSize: 12.sp,
//     fontFamily: 'Poppins-Regular',
//     color: global.descriptionColor);
// final TextStyle amounttextstyle = TextStyle(
//     fontSize: 40.sp, color: global.whiteColor, fontWeight: FontWeight.bold);

final TextStyle white16font = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: Colors.white,
);
final TextStyle normaltextStylefont = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Colors.white,
);
final TextStyle normalblacktextStylefont = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Colors.black,
);
final TextStyle blackbold = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
final TextStyle purple14font = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: purplecolor,
);
final TextStyle black24textStylefont = GoogleFonts.roboto(
  fontSize: 24.sp,
  color: Colors.black,
);
final TextStyle mediumblack20 = GoogleFonts.roboto(
  fontSize: 20.sp,
  color: Colors.black,
  fontWeight: FontWeight.w600,
);
final TextStyle black16textStylefont = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: Colors.black,
);
final TextStyle black20medium = GoogleFonts.roboto(
  fontSize: 20.sp,
  color: Colors.black,
  fontWeight: FontWeight.w500,
);
final TextStyle mediumtextStylefont = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: btnColor,
  fontWeight: FontWeight.w500,
);
final TextStyle white12medium = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: whitecolor,
  fontWeight: FontWeight.w500,
);
final TextStyle white12normal = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: whitecolor,
);
final TextStyle questionttxtstyle = GoogleFonts.roboto(
  fontSize: 20.sp,
  fontWeight: FontWeight.w500,
  color: btnColor,
);
final TextStyle normaltextStylefontblck = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Colors.black,
);
final TextStyle normaltextStylefonwhite = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Colors.white,
);
final TextStyle bluebold14 = GoogleFonts.roboto(
    fontSize: 14.sp, color: btnColor, fontWeight: FontWeight.bold);
final TextStyle hinttextStyle = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: hintcolor,
);
final TextStyle jointxtstyle = GoogleFonts.roboto(
    fontSize: 14.sp,
    color: hintcolor,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.bold);
final TextStyle underlinetxtstyle = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: hintcolor,
  decoration: TextDecoration.underline,
);
final TextStyle whitemediumstyle = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: Colors.white,
);
final TextStyle smalltextStylefontblck = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: Colors.black,
);

final TextStyle smalltextStylefontgrey = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: hintcolor,
);
final TextStyle mediumtextStylefontlight = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: btnColor,
);
final TextStyle largesttextstyle = GoogleFonts.roboto(
  fontSize: 34.sp,
  color: btnColor,
  fontWeight: FontWeight.w500,
);
final TextStyle hintcolorbold = GoogleFonts.roboto(
    fontSize: 14.sp, color: hintcolor, fontWeight: FontWeight.bold);
final TextStyle mediumhintcolorstyle = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: hintcolor,
);
final TextStyle bigtextstyle = GoogleFonts.roboto(
  fontSize: 25.sp,
  fontWeight: FontWeight.bold,
  color: btnColor,
);
final TextStyle bigtextstyleregular = GoogleFonts.roboto(
  fontSize: 25.sp,
  color: Colors.black,
);
final TextStyle bigtextstyleregularhintcolor = GoogleFonts.roboto(
  fontSize: 25.sp,
  color: hintcolor,
);
