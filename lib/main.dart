import 'dart:async';
import 'dart:developer';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CUP',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // primarySwatch: Colors.lightBlue,
          ),
      home: const MyHomePage(title: 'Cup'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const countDownDuration = Duration(days: 150);
  Duration duration = Duration();
  Timer? timer;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    duration = countDownDuration;
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds - addSeconds;
      duration = Duration(seconds: seconds);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title,
            style: GoogleFonts.montserrat(
                color: Colors.black,
                // fontSize: 35,
                fontWeight: FontWeight.w300)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome To ',
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w300)),
                Text(
                  'Code Up',
                  style: GoogleFonts.montserrat(
                      color: Colors.lightBlue,
                      fontSize: 35,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Where ',
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  'Big ',
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Dreams become ',
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  'Alive ',
                  style: GoogleFonts.montserrat(
                      color: Colors.lightGreen, fontSize: 35),
                ),
              ],
            ),
            Text(
              'We are coming in:',
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w300),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    '${duration.inDays.remainder(365).toString().padLeft(2, '0')} :',
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Days",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  )
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    ' ${duration.inHours.remainder(24).toString().padLeft(2, '0')} :',
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Hours",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  )
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    ' ${duration.inMinutes.remainder(24).toString().padLeft(2, '0')} ',
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Min",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey[100],
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Our Vision",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.w300),
                ),
                Text("     "),
                Text(
                  "We envision being the FIRST CHOICE small and medium\n enterprises seek out for building an interactive website.\n Our team follows a user centered design process which\n means that our sole focus is YOU and your users. We\n analyze your competition to ensure that your website\n meets industry standards. By 2027, we will be THE partner\n in web design and development.  ",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
