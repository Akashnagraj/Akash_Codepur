import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyGoogleNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyGoogleNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GNav(
        onTabChange: (value) {
          onTabChange!(value);
        },
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        gap: 10,
        color: Colors.black,
        tabBorderRadius: 10,
        iconSize: 20,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "HOME",
          ),
          GButton(
            icon: Icons.shopping_bag,
            text: "CART",
          ),
        ],
      ),
    );
  }
}

// https://youtu.be/Lm_XCijreJk 
