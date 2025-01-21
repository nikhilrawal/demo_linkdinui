import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_linkdin_ui/screens/signin_page/signin_screen.dart';
import 'package:minimal_linkdin_ui/screens/signup_page/signup_screen2.dart';
import 'package:minimal_linkdin_ui/widgets/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: SvgPicture.asset(
                'assets/Logo.svg',
                width: 35,
                height: 35,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Join LinkedIn',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'or',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SigninScreen()),
                            );
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email or Phone',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'By clicking on Agree & Join or Continue, you agree to the LinkedIn User Agreement, Privacy Policy, and Cookie Policy. For phone number signup we will send you a vefification code via sms',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 25,
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
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(color: kPrimaryColor),
                            ),
                          ),
                        ),
                        child: Text(
                          'Agree and Join',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 0.3,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                      ),
                      Text('or'),
                      SizedBox(
                        height: 0.3,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SignUpScreen2()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.white),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
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
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SignUpScreen2()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.white),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
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
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SignUpScreen2()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.white),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
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
                              'assets/apple-logo.svg',
                              width: 23,
                              height: 23,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Continue with Apple',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
