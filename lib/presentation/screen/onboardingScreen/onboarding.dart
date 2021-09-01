import 'package:e_consultation/core/constant/approute.dart';
import 'package:e_consultation/core/constant/customColors.dart';
import 'package:e_consultation/data/model/onboardingModel.dart';
import 'package:e_consultation/presentation/screen/Auth/startPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int _currentIndex = 0;
  late PageController _pageController;

  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  onboardingInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.backgroundColor,
        actions: [
          TextButton(
              onPressed: () async {
                await onboardingInfo();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartPage()));
              },
              child: Text(
                'Skip',
                style: TextStyle(color: CustomColors.orange),
              ))
        ],
      ),
      body: SafeArea(
        child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            itemCount: screen.length,
            onPageChanged: (int i) {
              setState(() {
                _currentIndex = i;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      screen[index].img!,
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
                    Container(
                      height: 10,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: screen.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 3),
                                  width: _currentIndex == index ? 30 : 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: _currentIndex == index
                                        ? CustomColors.blue
                                        : CustomColors.lightBlue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                    Text(
                      screen[index].text!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      screen[index].desc!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.blue),
                    ),
                    InkWell(
                      onTap: () async {
                        if (index == screen.length - 1) {
                          await onboardingInfo();
                          Navigator.pushNamed(context, AppRouter.startPage);
                        } else {
                          _currentIndex++;
                          _pageController.nextPage(
                              duration: Duration(microseconds: 300),
                              curve: Curves.easeInToLinear);
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: CustomColors.blue),
                        child: ListTile(
                          title: Text(
                            'Get Started',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          trailing: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Icon(
                              Icons.arrow_right_alt,
                              color: CustomColors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
