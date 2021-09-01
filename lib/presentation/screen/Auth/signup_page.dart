import 'package:e_consultation/core/constant/approute.dart';
import 'package:e_consultation/core/constant/customColors.dart';
import 'package:e_consultation/presentation/widget/headingtext.dart';
import 'package:e_consultation/presentation/widget/submit_button.dart';
import 'package:e_consultation/presentation/widget/textFormField.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.7)),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      // alignment: Alignment.topLeft,
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: CustomColors.lightGrey,
                        size: 20,
                      ),
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "SIGNUP",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: CustomColors.orange,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Add Your Details Here",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2C2C2C).withOpacity(0.5)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                HeadingText(
                  title: 'Email',
                ),
                TextFieldWidget(
                  text: 'Enter Email',
                  validator: (_) {},
                  keyboardType: TextInputType.emailAddress,
                ),
                HeadingText(
                  title: 'name',
                ),
                TextFieldWidget(
                  text: 'Enter Name',
                  validator: (_) {},
                ),
                HeadingText(title: 'Password'),
                TextFieldWidget(
                  text: 'Enter Password',
                  validator: (_) {},
                  obscureText: true,
                ),
                HeadingText(
                  title: 'Confirm Password',
                ),
                TextFieldWidget(
                  text: 'Enter confirm Password',
                  validator: (_) {},
                  obscureText: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                SubmitButton(
                  label: 'SignUp',
                  onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: CustomColors.lightGrey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouter.login);
                      },
                      child: Text(
                        'LogIn',
                        style:
                            TextStyle(color: CustomColors.orange, fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
