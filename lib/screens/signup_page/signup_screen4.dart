import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_linkdin_ui/main_page.dart';
import 'package:minimal_linkdin_ui/widgets/constants.dart';

class SignupScreen4 extends StatefulWidget {
  const SignupScreen4({super.key});

  @override
  State<SignupScreen4> createState() => _SignupScreen4State();
}

class _SignupScreen4State extends State<SignupScreen4> {
  bool remember = false;

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
                      'Setup your password',
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
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Re-type Password',
                      ),
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
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[800]),
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
      ),
    ));
  }
}
