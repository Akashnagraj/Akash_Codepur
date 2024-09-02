import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text("C O D E P U R"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/images/image6.png"),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Welcome to Bubble Milk Tea App",
                style: TextStyle(
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 3, 33, 4)),
                textScaler: TextScaler.linear(2.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// https://youtu.be/VevQllpCmgw

//https://youtu.be/WtGQuA_Yu1E?list=PLrjrqTcKCnhTXI2GyPkaQF47inLp6LoIC&t=1220 