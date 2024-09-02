import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LearningYT extends StatefulWidget {
  const LearningYT({super.key});

  @override
  State<LearningYT> createState() => _LearningYTState();
}

class _LearningYTState extends State<LearningYT> {
  int mynum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 30,
          tabBorder: Border.all(
            color: Colors.black,
            width: 3,
          ),
          tabActiveBorder: Border.all(
            color: Colors.white,
            width: 2,
          ),
          tabMargin: EdgeInsets.only(
            right: 10,
          ),
          activeColor: Colors.white,
          gap: 10,
          tabs: [
            GButton(
              icon: Icons.shopping_bag,
              text: "Cart",
            ),
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.favorite,
              text: "Love",
            ),
          ],
          selectedIndex: 1,
          onTabChange: (value) {
            print(value);
            setState(() {
              mynum = value;
            });
          },
        ),
      ),
      body: Center(
        child: Container(
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 4),
            borderRadius: BorderRadius.circular(15),
            color: Colors.deepPurple[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "INDEX VALUE IS $mynum",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
