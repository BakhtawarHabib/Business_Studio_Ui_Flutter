import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:studio_app_ui/constants/styles.dart';
import 'package:studio_app_ui/widgets/custombtn.dart';

class RateUs extends StatefulWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  _RateUsState createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/rateus.png",
            height: 500,
          ),
          CustomBtn(
              txt: "RATE US ",
              onpress: () {
                _showRatingAppDialog(context);
              },
              height: 50,
              width: 200)
        ],
      ),
    );
  }

  void _showRatingAppDialog(
    BuildContext context,
  ) {
    final _ratingDialog = RatingDialog(
      title: Text(
        'RATE US',
        style: black16textStylefont,
        textAlign: TextAlign.center,
      ),
      message: Text(
        'Rating this app and tell others what you think.'
        ' Add more description here if you want.',
        style: black16textStylefont,
        textAlign: TextAlign.center,
      ),
      image: Image.asset(
        "images/appicon.png",
        height: 100,
      ),
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        print('rating: ${response.rating}, '
            'comment: ${response.comment}');

        if (response.rating < 3.0) {
          print('response.rating: ${response.rating}');
        } else {
          Container();
        }
      },
      submitButtonText: 'SAVE',
    );

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => _ratingDialog,
    );
  }
}
