import 'dart:async';

import 'package:cup/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CountDown extends StatefulWidget {
  const CountDown({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  State<CountDown> createState() => _CountDown();
}

class _CountDown extends State<CountDown> {
  static const countDownDuration = Duration(days: 150);
  Duration duration = Duration();
  Timer? timer;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    duration = countDownDuration;
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds - addSeconds;
      duration = Duration(seconds: seconds);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      // width: screenSize.width / 3,
      padding: /* EdgeInsets.only(
        top: widget.screenSize.height * 0.05,
        left: ResponsiveWidget.isSmallScreen(context)
            ? widget.screenSize.width / 12
            : widget.screenSize.width / 5,
        right: ResponsiveWidget.isSmallScreen(context)
            ? widget.screenSize.width / 12
            : widget.screenSize.width / 5,
        bottom: widget.screenSize.height * 0.10,
      ),
      child: Padding(
        padding: */
          EdgeInsets.only(
        top: widget.screenSize.height * 0.06,
        left: widget.screenSize.width / 15,
        right: widget.screenSize.width / 15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'We are Coming in:',
            style: GoogleFonts.jetBrainsMono(
                fontSize: 35,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800]),
          ),
          SizedBox(
            width: widget.screenSize.width / 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  '${duration.inDays.remainder(365).toString().padLeft(2, '0')} :',
                  style: GoogleFonts.jetBrainsMono(
                      color: Colors.grey[800],
                      fontSize: 45,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Days",
                  style: GoogleFonts.jetBrainsMono(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                )
              ]),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  ' ${duration.inHours.remainder(24).toString().padLeft(2, '0')} :',
                  style: GoogleFonts.jetBrainsMono(
                      color: Colors.grey[800],
                      fontSize: 45,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Hours",
                  style: GoogleFonts.jetBrainsMono(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                )
              ]),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  ' ${duration.inMinutes.remainder(24).toString().padLeft(2, '0')} ',
                  style: GoogleFonts.montserrat(
                      color: Colors.grey[800],
                      fontSize: 45,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Min",
                  style: GoogleFonts.jetBrainsMono(
                      color: Colors.grey[800],
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                )
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
