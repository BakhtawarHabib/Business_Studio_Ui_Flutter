import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/strings.dart';
import 'package:studio_app_ui/constants/styles.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 30.h,
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 35.h,
                      ),
                      Text(
                        "Review",
                        style: black24textStylefont,
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "4.9",
                            style: bigtextstyleregular,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Overall Rating",
                                        style: black16textStylefont,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      itemSize: 20,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 0.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 6,
                                      ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                    Text(
                                      "(120)",
                                      style: hinttextStyle,
                                    ),
                                    Text(
                                      "Good (5)",
                                      style: hinttextStyle,
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Service",
                                      style: hinttextStyle,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 141,
                                      decoration: BoxDecoration(
                                          color: btnColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Price",
                                      style: hinttextStyle,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color: btnColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Column(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: hintcolor,
                                          maxRadius: 25,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      reviewnames[index],
                                                      style:
                                                          black16textStylefont,
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      reviewstimes[index],
                                                      style: hinttextStyle,
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    RatingBar.builder(
                                                      initialRating: 3,
                                                      itemSize: 15,
                                                      minRating: 1,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemPadding:
                                                          const EdgeInsets
                                                                  .symmetric(
                                                              horizontal: 0.0),
                                                      itemBuilder:
                                                          (context, _) =>
                                                              const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate:
                                                          (rating) {},
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "Contrary to popular besimp and world class\nlyrandom text. It has roots",
                                                  style: hinttextStyle,
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Divider(
                                        thickness: 1,
                                      ),
                                    )
                                  ],
                                )),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
