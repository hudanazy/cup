import 'package:cup/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceTiles extends StatelessWidget {
  ServiceTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'images/web.png',
    'images/mobile.png',
    'images/ui.png',
  ];

  final List<String> title = [
    'Web Development',
    'Android Development',
    'UI Design'
  ];

  @override
  Widget build(BuildContext context) {
    return /*ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenSize.width / 2.5,
                              width: screenSize.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  assets[pageIndex],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height / 70,
                              ),
                              child: Text(
                                title[pageIndex],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenSize.width / 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        :*/
        Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...Iterable<int>.generate(assets.length).map(
            (int pageIndex) => Column(
              children: [
                SizedBox(
                  height: screenSize.width / 6,
                  width: screenSize.width / 6,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              assets[pageIndex],
                              // fit: BoxFit.cover,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 20,
                              spreadRadius: 5,
                              color: Colors.grey.withOpacity(0.3),
                            )
                          ]),
                    ),
                    Positioned(
                      bottom: 7,
                      // left: screenSize.width / 30,
                      child: Row(children: [
                        SizedBox(
                          width: screenSize.width / 50,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              //   top: screenSize.height / 18,
                              //  bottom: screenSize.height / 15,
                              ),
                          width: screenSize.width / 7,
                          child: Text(
                            title[pageIndex],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ]),
                ),

                // Padding(
                //   padding: EdgeInsets.only(
                //     top: screenSize.height / 70,
                //   ),
                //   child: Text(
                //     title[pageIndex],
                //     style: TextStyle(
                //       fontSize: 16,
                //       fontFamily: 'Montserrat',
                //       fontWeight: FontWeight.w500,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
