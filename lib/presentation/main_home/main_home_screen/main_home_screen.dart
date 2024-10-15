import 'package:flutter/material.dart';

import '../../../core/utils/Functions/custom_bottom_navigation_bar.dart';
import '../../tabs/explore/explore_screen/explore_screen.dart';
import '../../tabs/profile/profile_screen/profile_screen.dart';
import '../../tabs/result/result_screen/result_screen.dart';


class MainHomeScreen extends StatefulWidget {
  static  String routeName = "MainHomeScreen";

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabes = [
    ExploreScreen(),
    ResultScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: selectedIndex,
          context: context,
          onTabFunction: (index) {
            setState(() {
              selectedIndex = index;
            });
          }),
      body: tabes[selectedIndex],
    );
  }
}
