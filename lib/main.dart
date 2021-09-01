import 'package:e_consultation/core/constant/approute.dart';
import 'package:e_consultation/core/constant/customColors.dart';
import 'package:e_consultation/presentation/screen/Auth/startPage.dart';
import 'package:e_consultation/presentation/screen/onboardingScreen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isViewed;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('onBoard');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomAppBarColor: Color(0xffF0F6F6),
        scaffoldBackgroundColor: CustomColors.backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: isViewed != 0 ? OnBoardingView() : StartPage(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
