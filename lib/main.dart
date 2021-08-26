import 'package:e_consultation/presentation/screen/onboardingScreen/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomAppBarColor: Color(0xffF0F6F6),
        scaffoldBackgroundColor: Color(0xffF0F6F6),
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingView(),
    );
  }
}
