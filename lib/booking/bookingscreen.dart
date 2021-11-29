import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/screen_util.dart';
import 'package:studio_app_ui/constants/styles.dart';

import 'bookinginfo/bookinginfo.dart';
import 'invoice/invoicescreen.dart';

class MyBookingsScreen extends StatefulWidget {
  @override
  _MyBookingsScreenState createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: btnColor,
      appBar: AppBar(
        backgroundColor: btnColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "My Bookings",
                  style: black24textStylefont,
                ),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: hintcolor.withOpacity(0.1)),
              child: TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.black,
                labelColor: purplecolor,
                controller: _controller,
                tabs: const [
                  Tab(
                    text: 'Booked',
                  ),
                  Tab(
                    text: 'History',
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                            10,
                            (index) => InkWell(
                                  onTap: () {
                                    Get.to(() => const BookingInfoScreen());
                                  },
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      maxRadius: 25,
                                      minRadius: 15,
                                      backgroundColor:
                                          hintcolor.withOpacity(0.5),
                                    ),
                                    title: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                            10,
                            (index) => InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      maxRadius: 25,
                                      minRadius: 15,
                                      backgroundColor:
                                          hintcolor.withOpacity(0.5),
                                    ),
                                    title: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          ),
                                        ],
                                      ),
                                    ),
                                    trailing: InkWell(
                                      onTap: () {
                                        Get.to(() => InvoiceScreen());
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text("Invoice",
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                color: Colors.black)),
                                        height: 32,
                                        width: 92,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: const Color(0xffADBAFC)),
                                      ),
                                    ),
                                  ),
                                )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
