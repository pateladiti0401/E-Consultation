import 'package:e_consultation/core/constant/customColors.dart';
import 'package:e_consultation/presentation/screen/Auth/login_page.dart';
import 'package:e_consultation/presentation/widget/circularwidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.7)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back_ios_sharp,
                        color: CustomColors.blue),
                    onPressed: () {}),
                Center(
                  child: Text(
                    'Welcome On Board',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Let's hope you meet your expectations!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: CustomColors.lightBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                      child: Text(
                    'Choose your Category',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: CustomColors.lightGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.07),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Circularwidget(
                          title: 'Doctor',
                          icon: FontAwesomeIcons.userMd,
                          ontap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Loginpage()));
                          }),
                      Circularwidget(
                        title: 'Patient',
                        icon: FontAwesomeIcons.hospitalUser,
                        ontap: () {},
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
