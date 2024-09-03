import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milk_tea_app/utils/myroutes.dart';

class CodePurFlutter extends StatefulWidget {
  const CodePurFlutter({super.key});

  @override
  State<CodePurFlutter> createState() => _CodePurFlutterState();
}

class _CodePurFlutterState extends State<CodePurFlutter> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C O D E P U R"),
      ),
      drawer: Drawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset("lib/images/image6.png"),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Welcome $name! To Bubble Milk Tea App",
                  style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 12, 76, 14)),
                  textScaler: TextScaler.linear(2.5),
                ),
              ),
              SizedBox(
                height: 15,
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
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
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
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.of(context).pushNamed(AkashmyRoutes.homeRoute);
              //   },
              //   child: Text(
              //     "Login",
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontFamily: GoogleFonts.lato().fontFamily,
              //     ),
              //   ),
              //   style: ButtonStyle(
              //     foregroundColor: WidgetStatePropertyAll(Colors.white),
              //     backgroundColor: WidgetStatePropertyAll(
              //       const Color.fromARGB(255, 12, 76, 14),
              //     ),
              //     shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
              //         side: BorderSide(color: Colors.black, width: 3),
              //         borderRadius: BorderRadius.circular(15))),
              //   ),
              // ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changebutton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.of(context).pushNamed(AkashmyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changebutton ? 50 : 200,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(changebutton ? 20 : 10),
                    color: Color.fromARGB(255, 12, 76, 14),
                  ),
                  child: Center(
                    child: changebutton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            // textAlign: TextAlign.center,
                            "Log in",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: GoogleFonts.lato().fontFamily),
                          ),
                  ),
                ),
              ),

              // Text("---------------------------"),
              // SizedBox(height: 30),
              // InkWell(
              //   onTap: () async {
              //     setState(() {
              //       changebutton = true;
              //     });
              //     await Future.delayed(Duration(seconds: 1));
              //     Navigator.of(context).pushNamed(AkashmyRoutes.homeRoute);
              //   },
              //   child: AnimatedContainer(
              //     duration: Duration(seconds: 1),
              //     width: changebutton ? 70 : 150,
              //     height: 50,
              //     decoration: BoxDecoration(
              //       border: Border.all(color: Colors.black, width: 3),
              //       borderRadius: BorderRadius.circular(changebutton ? 50 : 10),
              //       color: Color.fromARGB(255, 12, 76, 14),
              //     ),
              //     child: Center(
              //       child: changebutton
              //           ? Icon(
              //               Icons.done,
              //               color: Colors.white,
              //             )
              //           : Text(
              //               // textAlign: TextAlign.center,
              //               "Trial",
              //               style: TextStyle(
              //                   fontSize: 20,
              //                   color: Colors.white,
              //                   fontWeight: FontWeight.w500,
              //                   fontFamily: GoogleFonts.lato().fontFamily),
              //             ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

// https://youtu.be/VevQllpCmgw

//https://youtu.be/WtGQuA_Yu1E?list=PLrjrqTcKCnhTXI2GyPkaQF47inLp6LoIC&t=1220 