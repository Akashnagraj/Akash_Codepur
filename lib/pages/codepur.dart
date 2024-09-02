import 'package:flutter/material.dart';

class CodePurFlutter extends StatefulWidget {
  const CodePurFlutter({super.key});

  @override
  State<CodePurFlutter> createState() => _CodePurFlutterState();
}

class _CodePurFlutterState extends State<CodePurFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("V I S W A B H I S H E K"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Text(
          "Login Page",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          textScaler: TextScaler.linear(3),
        ),
      ),
    );
  }
}

// https://youtu.be/VevQllpCmgw