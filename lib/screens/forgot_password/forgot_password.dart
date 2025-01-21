import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_linkdin_ui/widgets/constants.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
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
                    "We'll send a verification code to this email or phone number if it matches an existing Linked account",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                          'Reset Password',
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
