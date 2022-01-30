import 'package:cup/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurValues extends StatelessWidget {
  const OurValues({
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
              'Our Values',
              textAlign: TextAlign.center,
              style: GoogleFonts.jetBrainsMono(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[850]),
            ),
          ),
          // SizedBox(
          //   width: screenSize.width / 10,
          // ),
          Container(
              width: screenSize.width / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "1",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[850]),
                  ),
                  SizedBox(
                    width: screenSize.width / 15,
                  ),
                  Text(
                    "2",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[850]),
                  ),
                ],
              ))
        ]));
  }
}
