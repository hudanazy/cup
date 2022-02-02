// import 'package:flutter_web/widgets/bottom_bar.dart';
// import 'package:flutter_web/widgets/carousel.dart';
import 'package:cup/widgets/bottombar.dart';
import 'package:cup/widgets/carousel.dart';
import 'package:cup/widgets/count_down.dart';
import 'package:cup/widgets/featured_heading.dart';
// import 'package:flutter_web/widgets/featured_tiles.dart';
// import 'package:flutter_web/widgets/floating_quick_access_bar.dart';
// import 'package:flutter_web/widgets/main_heading.dart';
// import 'package:flutter_web/widgets/menu_drawer.dart';
import 'package:cup/widgets/floating_quick_access_bar.dart';
import 'package:cup/widgets/main_heading.dart';
import 'package:cup/widgets/menu_drawer.dart';
import 'package:cup/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';
import 'package:cup/widgets/featured_tiles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cup/screens/countdown.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: screenSize.width < 800
          ? AppBar(
              iconTheme: IconThemeData(color: Colors.red[600]),
              elevation: 0,
              backgroundColor: Colors.white.withOpacity(0.5),
              title: Container(
                alignment: Alignment.center,
                height: 30,
                width: screenSize.width / 8,
                child: Image.asset(
                  'images/logosmaller.png',
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContents(_opacity),
            ),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: SizedBox(
                    height: screenSize.height * 0.65,
                    width: screenSize.width,
                    child: Image.asset(
                      'images/cubes.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: screenSize.height / 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: screenSize.height / 10,
                        bottom: screenSize.height / 15,
                      ),
                      width: screenSize.width,
                      child: Text(
                        'Software ideas developed into reality',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[800]),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        //  top: screenSize.height / 10,
                        bottom: screenSize.height / 15,
                      ),
                      width: screenSize.width,
                      child: Text(
                        'Web development, Android App Development, UI Design',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[850]),
                      ),
                    ),

                    SizedBox(
                      height: screenSize.height / 15,
                    ),
                    Container(
                      height: screenSize.height / 25,
                      child: ElevatedButton(
                        child: Text(
                          ' Tell us what you have in mind ',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.red[600] as Color),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            // foregroundColor:
                            //     MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
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
                      height: screenSize.height / 10,
                    ),
                    CountDown(screenSize: screenSize),
                    SizedBox(
                      height: screenSize.height / 10,
                    ),
                    // MainCarousel(),
                    // SizedBox(
                    //   height: screenSize.height / 5,
                    // ),
                    // FloatingQuickAccessBar(screenSize: screenSize),

                    // FeaturedHeading(
                    //   screenSize: screenSize,
                    // ),
                    // FeaturedTiles(screenSize: screenSize),
                    // MainHeading(screenSize: screenSize),
                    // MainCarousel(),
                    BottomBar()
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
