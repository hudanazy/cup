import 'package:cup/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      // width: screenSize.width / 3,
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
        bottom: screenSize.width / 15,
      ),
      child: Padding(
        padding: EdgeInsets.only(
            // top: screenSize.height * 0.06,
            // left: screenSize.width / 15,
            // right: screenSize.width / 15,
            ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'About',
              style: GoogleFonts.montserrat(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey),
            ),
            SizedBox(
              width: screenSize.width / 25,
            ),
            Text(
              '',
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}
