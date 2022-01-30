import 'package:cup/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurVision extends StatelessWidget {
  const OurVision({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.only(
        //   top: screenSize.height / 10,
        //   bottom: screenSize.height / 15,
        // ),
        width: screenSize.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Text(
              'Our Vision',
              textAlign: TextAlign.center,
              style: GoogleFonts.jetBrainsMono(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[850]),
            ),
          ),
          SizedBox(
            height: screenSize.height / 15,
          ),
          Container(
            width: screenSize.width / 2,
            child: Text(
              "We envision being the FIRST CHOICE small and medium enterprises seek out for building an interactive website. Our team follows a user centered design process which means that our sole focus is YOU and your users. We analyze your competition to ensure that your website meets industry standards. By 2027, we will be THE partner in web design and development.  ",
              textAlign: TextAlign.left,
              style: GoogleFonts.jetBrainsMono(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[850]),
            ),
          )
        ]));
  }
}