import 'package:cup/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
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
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Text(
              'About Us',
              textAlign: TextAlign.center,
              style: GoogleFonts.jetBrainsMono(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[850]),
            ),
          ),
          SizedBox(
            width: screenSize.width / 10,
          ),
          Container(
            width: screenSize.width / 3,
            child: Text(
              "We are a passionate team with a dream to be one of the best companies to offer web and apps development with the most reasonable prices. We care about communication with our clients we believe that the secret of a great success is communication. ",
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
