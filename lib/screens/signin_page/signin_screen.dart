import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_linkdin_ui/main_page.dart';
import 'package:minimal_linkdin_ui/screens/forgot_password/forgot_password.dart';
import 'package:minimal_linkdin_ui/screens/signup_page/signup_screen.dart';
import 'package:minimal_linkdin_ui/widgets/constants.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool remember = false;
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
                    'Sign In',
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
                                    builder: (context) => SignUpScreen()));
                          },
                          child: Text(
                            'Join Linkedin',
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
                              'Sign in with Google',
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
                              'Sign in with Facebook',
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
                              'Sign in with Apple',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )
                          ],
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
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email or Phone',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          activeColor: Colors.green[900],
                          value: remember,
                          onChanged: (value) {
                            setState(() {
                              remember = value!;
                            });
                          }),
                      Text(
                        'Remember me.',
                        style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Learn more',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen()));
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
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
                                  builder: (context) => MainPage()));
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
                          'Continue',
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
