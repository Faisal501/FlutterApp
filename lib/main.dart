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
//? scaffold is a structure which contains some basic widgets like appbar etc.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faisi App"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        //*drawer takes a widget (it is side bar of app)
        //key: , //? key is used to redrawing of widget mentioned
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.blueAccent),
            //   child: Text("Menu"),
            // ),
            const UserAccountsDrawerHeader(
              accountName: Text("Faisi"),
              accountEmail: Text("Faisi@gmail.com"),
              //  currentAccountPicture: Image.asset("assets/images/faisi.jpg"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/faisi.jpg"),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Faisal Mehmood"),
              subtitle: const Text("Software Developer"),
              trailing: const Icon(Icons.edit),
              onTap: () {}, //? for performing action
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Mohsin Mehmood"),
              subtitle: Text("Pak Army"),
              trailing: Icon(Icons.edit),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Haris Mehmood"),
              subtitle: Text("Student"),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            () {}, // this empty implementation of function (){} means void function
        child: const Icon(Icons.edit),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // another property
    );
  }
}
