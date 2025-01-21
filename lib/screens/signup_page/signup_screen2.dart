import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_linkdin_ui/screens/signup_page/signup_screen3.dart';
import 'package:minimal_linkdin_ui/widgets/constants.dart';

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: SvgPicture.asset(
                  'assets/Logo.svg',
                  width: 35,
                  height: 35,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add your name',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'First Name',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen3()));
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
      ),
    ));
  }
}
