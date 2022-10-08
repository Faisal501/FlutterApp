//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
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
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
  ));
}

// stateless widget is that which dont change its state like text on scrreen
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
// scaffold is a structure which contains some basic widgets like appbar etc.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faisi App"),
      ),
      body: Center(
        child: Container(
          // small widgets which can hold only child we will use child else
          padding: const EdgeInsets.all(10), // this will apply on child
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.blueAccent,
              shape: BoxShape.circle,
              gradient:
                  LinearGradient(colors: [Colors.blue, Colors.deepPurple]),
              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black)]),
          alignment: Alignment.center, // this will apply to child
          child: const Text(
            "Rana Faisal",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
