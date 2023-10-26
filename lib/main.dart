import 'package:better_place/screens/bottom_bar.dart';
import 'package:better_place/utils/app_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Better Place',
      theme: ThemeData(
       primaryColor: primary,
      ),
      home: const BottomBar(),
    );
  }
}


