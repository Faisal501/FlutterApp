//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home_page.dart';
import 'package:flutter_app_1/pages/login_page.dart';

// import 'package:flutter/cupertino.dart'; this package is used for ios app

void main() {
  /**
   *  runApp function takes three types of app
   *  1.  Widgets App
   *  2.  Material App
   *  3.  Cupertino App
   *  and they come from the flutter packages above.  
   * 
   *  Note: Everything in a flutter is a widget and widget is a component
   */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
