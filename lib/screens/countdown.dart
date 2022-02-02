// import 'package:flutter_web/widgets/bottom_bar.dart';
// import 'package:flutter_web/widgets/carousel.dart';
import 'package:cup/widgets/bottombar.dart';
import 'package:cup/widgets/carousel.dart';
import 'package:cup/widgets/count_down.dart';
import 'package:cup/widgets/featured_heading.dart';
import 'package:cup/widgets/floating_quick_access_bar.dart';
import 'package:cup/widgets/main_heading.dart';
import 'package:cup/widgets/menu_drawer.dart';
import 'package:cup/widgets/service_tiles.dart';
import 'package:cup/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';
import 'package:cup/widgets/featured_tiles.dart';
import 'package:google_fonts/google_fonts.dart';

class CountdownPage extends StatefulWidget {
  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
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
                      height: screenSize.height / 6,
                    ),

                    CountDown(screenSize: screenSize),

                    SizedBox(
                      height: screenSize.height / 5,
                    ),
                    BottomBar()

                    // MainHeading(screenSize: screenSize),
                    // FeaturedTiles(screenSize: screenSize),
                    // // MainCarousel(),
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
