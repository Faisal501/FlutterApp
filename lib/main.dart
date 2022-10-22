//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/home_page_stream_builder.dart';
import 'pages/login_page.dart';
import 'utils/constants.dart';

// import 'package:flutter/cupertino.dart'; this package is used for ios app

Future main() async {
  /**
   *  runApp function takes three types of app
   *  1.  Widgets App
   *  2.  Material App
   *  3.  Cupertino App
   *  and they come from the flutter packages above.  
   * 
   *  Note: Everything in a flutter is a widget and widget is a component
   */
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("LoggedIn") == true
          //      ? const HomePage() //* Commented for learning future builder
          //? HomePageFB()
          ? HomePageSB()
          : const LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        //    HomePage.routeName: (context) => const HomePage(),
        //HomePageFB.routeName: (context) => HomePageFB(),
        HomePageSB.routeName: (context) => HomePageSB(),
      },
    );
  }
}
