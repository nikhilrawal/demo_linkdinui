import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_linkdin_ui/screens/signin_page/signin_screen.dart';
import 'package:minimal_linkdin_ui/screens/signup_page/signup_screen2.dart';
import 'package:minimal_linkdin_ui/widgets/constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/Logo.svg',
                  width: 80,
                  height: 80,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Join a trusted community of 500M\nprofessionals',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'By clicking Agree & Join or Continue, you agree to Linkdin User Agreement, Privacy Policy, Cookie Policy',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen2()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(kPrimaryColor),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: kPrimaryColor),
                          ),
                        ),
                      ),
                      child: Text(
                        'Agree & Join',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen2()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.white),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons-google.svg',
                            width: 23,
                            height: 23,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Continue with Google',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen2()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.white),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/facebook-logo.svg',
                            width: 23,
                            height: 23,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Continue with Facebook',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SigninScreen()));
              },
              child: Text(
                'Sign In',
                style: TextStyle(color: kPrimaryColor, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
