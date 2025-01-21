import 'package:flutter/material.dart';
import 'package:minimal_linkdin_ui/screens/welcome_page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'LinkdinUI',
        debugShowCheckedModeBanner: false,
        // home: MainPage());
        home: WelcomePage());
  }
}
