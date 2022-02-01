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
          Container(
              width: screenSize.width,
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
                    width: screenSize.width / 45,
                  ),
                  Container(
                    width: screenSize.width / 5,
                    child: RichText(
                        text: TextSpan(
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[850]),
                            children: <TextSpan>[
                          TextSpan(
                            text: "Think big",
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[850]),
                          ),
                          TextSpan(
                            text:
                                " we encourage ourselves and our customers to have no constraints of what they want to Build.",
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[850]),
                          )
                        ])),
                  ),
                  SizedBox(
                    width: screenSize.width / 45,
                  ),
                  Text(
                    "2",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[850]),
                  ),
                  SizedBox(
                    width: screenSize.width / 45,
                  ),
                  Container(
                    width: screenSize.width / 5,
                    child: RichText(
                        text: TextSpan(
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[850]),
                            children: <TextSpan>[
                          TextSpan(
                            text: "Hungry to learn",
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[850]),
                          ),
                          TextSpan(
                            text:
                                " we encourage ourselves and our team to never stop learning.",
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[850]),
                          )
                        ])),
                  ),
                  SizedBox(
                    width: screenSize.width / 40,
                  ),
                  Text(
                    "3",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[850]),
                  ),
                  SizedBox(
                    width: screenSize.width / 40,
                  ),
                  Container(
                    width: screenSize.width / 5,
                    child: RichText(
                        text: TextSpan(
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[850]),
                            children: <TextSpan>[
                          TextSpan(
                            text: "Customer centered",
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[850]),
                          ),
                          TextSpan(
                            text:
                                " we care about involving our customers in every step of the way to grunt that it will come out just how they want it. ",
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[850]),
                          )
                        ])),
                  ),
                  SizedBox(
                    width: screenSize.width / 15,
                  ),
                ],
              ))
        ]));
  }
}
