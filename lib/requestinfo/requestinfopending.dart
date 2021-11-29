import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/strings.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/widgets/acceptdialog.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';
import 'package:studio_app_ui/widgets/customtxtfield.dart';

class RequestInfoPendingScreen extends StatefulWidget {
  const RequestInfoPendingScreen({Key? key}) : super(key: key);

  @override
  _RequestInfoPendingScreenState createState() =>
      _RequestInfoPendingScreenState();
}

class _RequestInfoPendingScreenState extends State<RequestInfoPendingScreen> {
  DateTime? _chosenDateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 40),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
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
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    const Center(
                      child: CircleAvatar(
                        backgroundColor: hintcolor,
                        maxRadius: 55,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: Text(
                        "Fahima Khan",
                        style: black20medium,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: Container(
                        height: 50.h,
                        width: 345.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: hintcolor.withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Booked",
                                style: normalblacktextStylefont,
                              ),
                              Text(
                                "Pending",
                                style: purple14font,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "Expert",
                        style: mediumblack20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Name",
                            style: normalblacktextStylefont,
                          ),
                          Text(
                            "Mister DY",
                            style: hinttextStyle,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "Date & Time",
                        style: mediumblack20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: normalblacktextStylefont,
                          ),
                          Text(
                            "25 Aguest 2021",
                            style: hinttextStyle,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Time",
                            style: normalblacktextStylefont,
                          ),
                          Text(
                            "23.00 pm",
                            style: hinttextStyle,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Duration",
                            style: normalblacktextStylefont,
                          ),
                          Text(
                            "2hr",
                            style: hinttextStyle,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "Montant total",
                        style: mediumblack20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          montaltotaluplist.length,
                          (index) => Text(
                                montaltotaluplist[index],
                                style: black16textStylefont,
                              )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          montaltotaldownlist.length,
                          (index) => Text(
                                montaltotaldownlist[index],
                                style: hinttextStyle,
                              )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sous total",
                            style: normalblacktextStylefont,
                          ),
                          Text(
                            "50€",
                            style: hinttextStyle,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Réduction",
                            style: normalblacktextStylefont,
                          ),
                          Text(
                            "42.5€",
                            style: hinttextStyle,
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      child: Divider(
                        thickness: 1.0,
                        color: Color(0xffADBAFC),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: normalblacktextStylefont,
                          ),
                          Text(
                            "42.5€",
                            style: normalblacktextStylefont,
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: btnColor,
                          onPressed: () {
                            acceptdialog(context);
                          },
                          child: Text(
                            "Accept",
                            style: white12medium,
                          ),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: const Color(0xffADBAFC),
                          onPressed: () {
                            resheduledialog(context);
                          },
                          child: Text(
                            "Reschedule",
                            style: smalltextStylefontgrey,
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: const Color(0xffADBAFC),
                            onPressed: () {
                              canceldialogg(context);
                            },
                            child: Text(
                              "Cancel",
                              style: smalltextStylefontgrey,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    ));
  }

  void resheduledialog(BuildContext context) {
    int selectedRadio = 1;
    Dialog fancyDialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Container(
          decoration: BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          height: 400.0,
          width: 400.0,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: whitecolor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  "Reschedule the request",
                  style: bigtextstyleregular,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "I agree to honor the appointment on :",
                      style: normalblacktextStylefont,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 100.h,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: whitecolor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                _showDatePicker(context);
                              },
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: hintcolor.withOpacity(0.2)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: whitecolor,
                                ),
                                width: 250.w,
                                child: TextFormField(
                                  enabled: false,
                                  cursorColor: btnColor,
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child:
                                          SvgPicture.asset("images/clock.svg"),
                                    ),
                                    border: InputBorder.none,
                                    errorStyle: const TextStyle(
                                        fontSize: 9.7,
                                        height: 0.06,
                                        color: Colors.red),
                                    hintText: "Choose another date",
                                    hintStyle: hinttextStyle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomBtn(
                        txt: "ACCEPT",
                        onpress: () {
                          Navigator.pop(context);
                        },
                        height: 50.h,
                        width: 155.w)
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Align(
                // These values are based on trial & error method
                alignment: const Alignment(1.05, -1.05),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff707070),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: whitecolor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
    showDialog(
        context: context, builder: (BuildContext context) => fancyDialog);
  }

  void _showDatePicker(context) {
    // showCupertinoModalPopup is a built-in function of the cupertino library

    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              height: 500,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Container(
                    height: 400,
                    child: CupertinoDatePicker(
                        use24hFormat: true,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (val) {
                          setState(() {
                            _chosenDateTime = val;
                          });
                        }),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 200,
                    shape: StadiumBorder(),
                    color: btnColor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "OK",
                      style: white12medium,
                    ),
                  )
                ],
              ),
            ));
  }
}
