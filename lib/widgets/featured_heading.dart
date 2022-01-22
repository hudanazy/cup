import 'package:cup/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedHeading extends StatefulWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  State<FeaturedHeading> createState() => _FeaturedHeadingState();
}

class _FeaturedHeadingState extends State<FeaturedHeading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Our Projects',
            style: GoogleFonts.montserrat(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.grey[850]),
          ),
          SizedBox(
            width: widget.screenSize.width / 25,
          ),
          Text(
            'cdc',
            textAlign: TextAlign.end,
          ),
        ],
      ),
      //),\
    );
  }
}
