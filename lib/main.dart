import 'package:first_week/screens/home_screen.dart';
import 'package:first_week/screens/responsivescreen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home wo screen ho sab s pehle chlegi
      title: "Practice Project",
      home: Responsivescreen(),
    );
  }
}
