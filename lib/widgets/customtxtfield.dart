import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';

import '../constants/screen_util.dart';

class CustomEmailTextField extends StatelessWidget {
  final validator;
  final lableText;
  final onIconPressed;
  final onChanged;
  final isPassword;
  final isObscureText;
  final controller;
  double width;

  CustomEmailTextField({
    this.controller,
    @required this.lableText,
    required this.width,
    this.onIconPressed,
    @required this.validator,
    @required this.onChanged,
    this.isPassword = false,
    this.isObscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: hintcolor.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(10),
        color: whitecolor,
      ),
      width: width.w,
      child: TextFormField(
        controller: this.controller,
        onChanged: onChanged,
        validator: validator,
        cursorColor: btnColor,
        obscureText: isObscureText,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset("images/email.svg"),
          ),
          border: InputBorder.none,
          errorStyle: TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
          hintText: lableText,
          hintStyle: hinttextStyle,
          contentPadding: EdgeInsets.all(20.0),
        ),
      ),
    );
  }
}

class CustomNormalTextField extends StatelessWidget {
  final validator;
  final lableText;
  final onChanged;
  final controller;
  double width;

  CustomNormalTextField({
    this.controller,
    @required this.lableText,
    required this.width,
    @required this.validator,
    @required this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: hintcolor.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(10),
        color: whitecolor,
      ),
      width: width.w,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        cursorColor: btnColor,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          border: InputBorder.none,
          errorStyle:
              const TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
          hintText: lableText,
          hintStyle: hinttextStyle,
          contentPadding: const EdgeInsets.all(20.0),
        ),
      ),
    );
  }
}

class CustomPasswordTextField extends StatelessWidget {
  bool _passwordVisible = false;
  final validator;
  final lableText;
  final onIconPressed;
  final onChanged;
  final isPassword;
  final isObscureText;
  final controller;
  VoidCallback onpress;
  double width;

  CustomPasswordTextField({
    this.controller,
    @required this.lableText,
    required this.width,
    this.onIconPressed,
    @required this.validator,
    @required this.onChanged,
    required this.onpress,
    this.isPassword = false,
    this.isObscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: hintcolor.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(10),
        color: whitecolor,
      ),
      width: width.w,
      child: TextFormField(
        controller: this.controller,
        onChanged: onChanged,
        validator: validator,
        cursorColor: btnColor,
        obscureText: _passwordVisible,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed: onpress,
          ),
          border: InputBorder.none,
          errorStyle: TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
          hintText: lableText,
          hintStyle: hinttextStyle,
          contentPadding: EdgeInsets.all(20.0),
        ),
      ),
    );
  }
}

class CustomSearchtextfield extends StatelessWidget {
  const CustomSearchtextfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whitecolor,
        border: Border.all(color: hintcolor),
      ),
      width: 337.w,
      child: TextFormField(
        // controller: this.controller,
        validator: (val) =>
            // ignore: prefer_is_empty
            val!.length == 0 ? "fill the field" : null,
        onChanged: (value) {},
        cursorColor: btnColor,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: hintcolor,
          ),
          border: InputBorder.none,
          errorStyle:
              const TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
          hintText: "Search by users or places",
          hintStyle: hinttextStyle,
          contentPadding: const EdgeInsets.all(20.0),
        ),
      ),
    );
  }
}
