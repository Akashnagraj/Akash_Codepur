import 'package:flutter/material.dart';
import 'package:milk_tea_app/pages/codepur.dart';
import 'package:milk_tea_app/pages/homepage.dart';
import 'package:milk_tea_app/utils/myroutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.amber,
        appBarTheme: AppBarTheme(
            // color: Colors.black,
            ),
      ),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: const Color.fromARGB(255, 12, 76, 14),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 30,
        ),
      ),
      initialRoute: AkashmyRoutes.loginRoute,
      routes: {
        AkashmyRoutes.loginRoute: (context) => CodePurFlutter(),
        AkashmyRoutes.homeRoute: (context) => TeaHomePage(),
      },
    );
  }
}
