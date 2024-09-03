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
                    color: const Color.fromARGB(255, 12, 76, 14)),
                textScaler: TextScaler.linear(2.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",
                      // label: Icon(Icons.home),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                print("Hey Akash");
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: GoogleFonts.lato().fontFamily,
                ),
              ),
              style: ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                backgroundColor: WidgetStatePropertyAll(
                  const Color.fromARGB(255, 12, 76, 14),
                ),
                shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(15))),
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