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
      body: Container(
        width: 500,
        color: Colors.black,
        child: Column(
          // try it with coloum
          // child: Row(      // try it with row
          // can have multiple childrens
          /**
           * For (row) mainaxisalignment is for horizontel axis and crossaxisalignment
           * is for vertial axis. And for coloum its opposite
           */

          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.blueAccent,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.lightBlue,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.lightBlueAccent,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
