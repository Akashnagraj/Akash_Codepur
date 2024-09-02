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
      backgroundColor: const Color.fromARGB(255, 5, 87, 7),
      appBar: AppBar(
        title: Text("V I S W A B H I S H E K"),
      ),
      body: Container(),
      drawer: Drawer(),
    );
  }
}

// https://youtu.be/VevQllpCmgw