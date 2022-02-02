import 'package:cup/screens/HomePage.dart';
import 'package:cup/screens/about.dart';
import 'package:cup/screens/countdown.dart';
import 'package:cup/screens/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cup/screens/LoginPage.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: screenSize.width / 8,
                  ),
                  // Text(
                  //   'CUP',
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.red[600],
                  //     // Color(0xFF077bd7),
                  //     fontSize: 26,
                  //     fontWeight: FontWeight.w500,
                  //     letterSpacing: 3,
                  //   ),
                  // ),
                  Container(
                    height: 30,
                    width: screenSize.width / 8,
                    child: Image.asset(
                      'images/logosmaller.png',
                    ),
                  ),
                  SizedBox(width: screenSize.width / 15),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Home',
                          style: GoogleFonts.jetBrainsMono(
                              color: _isHovering[0]
                                  ? Colors.red[600]
                                  : Colors.black87,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.red[600],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 15),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ServicePage()));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Services',
                          style: GoogleFonts.jetBrainsMono(
                              color: _isHovering[1]
                                  ? Colors.red[600]
                                  : Colors.black87,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.red[600],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 15),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[2] = true : _isHovering[2] = false;
                      });
                    },
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => AboutPage()));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'About Us',
                          style: GoogleFonts.jetBrainsMono(
                              color: _isHovering[2]
                                  ? Colors.red[600]
                                  : Colors.black87,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.red[600],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 15),
                  Container(
                    width: screenSize.width / 10,
                    child: ElevatedButton(
                      child: Text(
                        'Contact Us',
                        style: GoogleFonts.jetBrainsMono(fontSize: 18),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.red[600] as Color),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(5)),
                          // foregroundColor:
                          //     MaterialStateProperty.all<Color>(Colors.blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(
                                          color: Colors.red[600] as Color)))),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CountdownPage()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width / 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
