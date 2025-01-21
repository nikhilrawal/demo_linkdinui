import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:minimal_linkdin_ui/home_page/home_page.dart';
import 'package:minimal_linkdin_ui/home_page/post_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  void onTabTapped(int index) {
    if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PostScreen()));
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => SafeArea(
          child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 22,
          unselectedItemColor: Color(0xFF666666),
          unselectedFontSize: 12,
          selectedItemColor: Colors.black,
          showUnselectedLabels: true,
          onTap: (index) => onTabTapped(index),
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.house_fill,
                  size: 25,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.userGroup,
                  size: 22,
                ),
                label: 'My Network'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.solidSquarePlus,
                  size: 22,
                ),
                label: 'Post'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.bell_fill,
                  size: 25,
                ),
                label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.briefcase,
                  size: 22,
                ),
                label: 'Jobs'),
          ],
        ),
        body: _children[_currentIndex],
      )),
    );
  }
}
