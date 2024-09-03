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

  final _mykey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_mykey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.of(context).pushNamed(AkashmyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C O D E P U R"),
      ),
      drawer: Drawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _mykey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/images/image6.png",
                  height: 300,
                ),
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
                          icon: Icon(Icons.person),
                          hintText: "Enter User Name",
                          labelText: "User Name",
                          // label: Icon(Icons.home),
                        ),
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "UserName cannot be empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.password),
                          hintText: "Enter your password",
                          labelText: "Password",
                        ),
                        validator: (passwordvalue) {
                          if (passwordvalue!.isEmpty) {
                            return "Paswword cannot be empty";
                          } else if (passwordvalue.length < 6) {
                            return "Enter Password greater than 6 character";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  color: Color.fromARGB(255, 12, 76, 14),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () => movetoHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 150,
                      height: 50,
                      child: Center(
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.lato().fontFamily),
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
