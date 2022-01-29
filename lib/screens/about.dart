// import 'package:flutter_web/widgets/bottom_bar.dart';
// import 'package:flutter_web/widgets/carousel.dart';
import 'package:cup/widgets/bottombar.dart';
import 'package:cup/widgets/carousel.dart';
import 'package:cup/widgets/featured_heading.dart';
// import 'package:flutter_web/widgets/featured_tiles.dart';
// import 'package:flutter_web/widgets/floating_quick_access_bar.dart';
// import 'package:flutter_web/widgets/main_heading.dart';
// import 'package:flutter_web/widgets/menu_drawer.dart';
import 'package:cup/widgets/floating_quick_access_bar.dart';
import 'package:cup/widgets/main_heading.dart';
import 'package:cup/widgets/our_values.dart';
import 'package:cup/widgets/service_tiles.dart';
import 'package:cup/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';
import 'package:cup/widgets/featured_tiles.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: TopBarContents(_opacity),
      ),
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

                    MainHeading(screenSize: screenSize),
                    // FeaturedHeading(screenSize: screenSize),
                    // FeaturedTiles(screenSize: screenSize),
                    SizedBox(
                      height: screenSize.height / 5,
                    ),
                    OurValues(screenSize: screenSize),
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
//card with half text
// Column(
//               children: [
//                 SizedBox(
//                   height: screenSize.width / 6,
//                   width: screenSize.width / 3.8,
//                   child: GestureDetector(
//                     child: Card(
//                       semanticContainer: true,
//                       clipBehavior: Clip.antiAliasWithSaveLayer,
//                       elevation: 3.0,
//                       child: Container(
//                         margin: EdgeInsets.all(10),
//                         color: Colors.white,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             SizedBox(
//                               height: 0.0,
//                             ),
//                             AspectRatio(
//                                 aspectRatio: 2.5,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: const Radius.circular(20),
//                                       topRight: const Radius.circular(20)),
//                                   child: Image.asset(
//                                     'images/blu.png',
//                                     //   width: 200,
//                                     height: 200,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 )),
//                             Row(
//                               children: <Widget>[
//                                 SizedBox(
//                                   width: 40.0,
//                                   height: 40,
//                                 ),
//                                 Text(
//                                   title[pageIndex],
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 14,
//                                       fontFamily: "Comfortaa"),
//                                 ),
//                               ],
//                             ),

//                             /*  if (theRatingNumber > 0)
//                             InkWell(
//                               child: Text(
//                                 '($Count)',
//                                 style: TextStyle(fontSize: 10),
//                               ),
//                             ) */
//                           ],
//                         ),
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.0),
//                       ),
//                     )

//                     // Card(
//                     //     elevation: 6,
//                     //     shape: RoundedRectangleBorder(
//                     //         borderRadius:
//                     //             BorderRadius.circular(10),
//                     //         side: BorderSide(
//                     //             width: 0.5,
//                     //             color: Colors.orange.shade400)),
//                     //     margin: const EdgeInsets.fromLTRB(
//                     //         10, 0, 10, 0),
//                     //     //color: Colors.orangeAccent,
//                     //     child: ListTile(
//                     //       title: Center(
//                     //           child: Text(
//                     //         document['name'],
//                     //         textAlign: TextAlign.center,
//                     //         style: TextStyle(
//                     //             color: Colors.black,
//                     //             fontFamily: 'Comfortaa',
//                     //             fontSize: 16,
//                     //             ),
//                     //       )),
//                     //       /*  subtitle: Text(
//                     //         document['date'].toString(),
//                     //         style: TextStyle(
//                     //             color: Colors.amber[600],
//                     //             fontFamily: 'Comfortaa',
//                     //             fontSize: 14),
//                     //       ), */
//                     //       // 00:000
//                     //       trailing: Icon(
//                     //         Icons.arrow_forward_ios_sharp,
//                     //         color: Colors.purple[300],
//                     //       ),
//                     // onTap: () {
//                     //   Navigator.push(
//                     //       context,
//                     //       MaterialPageRoute(
//                     //           builder: (context) =>
//                     //               eventDetailsForUesers(
//                     //                 event: uid,
//                     //                 // change to move to details and booked
//                     //               )));
//                     // },
//                     //     )));
//                     ,
//                     onTap: () {
//                       // Navigator.push(
//                       //     context,
//                       //     MaterialPageRoute(
//                       //         builder: (context) =>
//                       //             eventDetailsForUesers(
//                       //               event: uid,
//                       //               // change to move to details and booked
//                       //             )));
//                     },
//                   ),
//                   //docmnt
//                   // )
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     top: screenSize.height / 70,
//                   ),
//                   child: Text(
//                     title[pageIndex],
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ],
//             ),