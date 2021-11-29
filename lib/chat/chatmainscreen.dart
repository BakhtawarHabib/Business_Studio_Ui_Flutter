import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio_app_ui/chat/reciverwidget.dart';
import 'package:studio_app_ui/chat/senderwidget.dart';
import 'package:studio_app_ui/constants/colors.dart';
import 'package:studio_app_ui/constants/styles.dart';

class ChatPageView extends StatefulWidget {
  @override
  _ChatPageViewState createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  TextEditingController _text = new TextEditingController();
  ScrollController _scrollController = ScrollController();
  var childList = <Widget>[];
  void handleClick(int item) {
    switch (item) {
      case 0:
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => SpotSignals()));
        break;
      case 1:
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => SendGift()));
        break;
    }
  }

  @override
  void initState() {
    super.initState();

    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'Hi How you ...',
        time: '9:22 AM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'OK \nI will be here ...',
        time: '9:23 AM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content: 'I am busy with my boss I will getyou in a while. NM',
        time: '9:23 AM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'Ok take your time',
        time: '22:40 PM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content:
            'Hey I am here. Can we start the meeting do dicuss the details...',
        time: '9:57 PM',
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        backgroundColor: whitecolor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: hintcolor.withOpacity(0.3), shape: BoxShape.circle),
              height: 40,
              width: 40,
              child: Text(
                "LM",
                style: bluebold14,
              ),
              alignment: Alignment.center,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "Laurent",
              style: normaltextStylefontblck,
            ),
          ],
        ),
        actions: [
          PopupMenuButton<int>(
              icon: Icon(
                Icons.more_vert,
                color: btnColor,
              ),
              onSelected: (item) => handleClick(item),
              itemBuilder: (context) => [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                          Text('Star'),
                        ],
                      ),
                    ),
                    PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.delete, color: btnColor),
                            Text('Delete'),
                          ],
                        ))
                  ])
        ],
      ),
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          SizedBox(
            height: 20.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(),
                  child: SingleChildScrollView(
                      controller: _scrollController,
                      // reverse: true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: childList,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: hintcolor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      maxLines: 20,
                      controller: _text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.emoji_emotions,
                          color: hintcolor,
                        ),
                        suffixIcon: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.send,
                              color: btnColor,
                            )
                          ],
                        ),
                        border: InputBorder.none,
                        hintText: "Type a message...",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
