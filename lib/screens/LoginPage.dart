// import 'package:flutter_web/widgets/bottom_bar.dart';
// import 'package:flutter_web/widgets/carousel.dart';
import 'package:cup/widgets/featured_heading.dart';
// import 'package:flutter_web/widgets/featured_tiles.dart';
// import 'package:flutter_web/widgets/floating_quick_access_bar.dart';
// import 'package:flutter_web/widgets/main_heading.dart';
// import 'package:flutter_web/widgets/menu_drawer.dart';
import 'package:cup/widgets/floating_quick_access_bar.dart';
import 'package:cup/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';
import 'package:cup/widgets/featured_tiles.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/cubes.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}