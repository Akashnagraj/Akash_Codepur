import 'package:flutter/material.dart';
import 'package:milk_tea_app/pages/myNavBar.dart';

class TeaHomePage extends StatefulWidget {
  const TeaHomePage({super.key});

  @override
  State<TeaHomePage> createState() => _TeaHomePageState();
}

class _TeaHomePageState extends State<TeaHomePage> {

  int _selectedIndex = 0; 

  void navigateBottomBar (int newIndex){
    setState(() {
      _selectedIndex = newIndex; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      bottomNavigationBar: MyGoogleNavBar(
        onTabChange: (index) {
          navigateBottomBar(index); 
        },
      ),
    );
  }
}
