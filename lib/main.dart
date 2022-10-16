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
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myName = "Change Your Name";
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    //? to initialize the state
    super.initState();
  }

  @override
  void dispose() {
    //* to distroy the state
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
//? scaffold is a structure which contains some basic widgets like appbar etc.
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text("Faisi App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    //* if anything overflow then wrap it in SingleChildScrollView
                    "images/faisi.png",
                    // height: 200,
                    // width: 200,
                    // fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    myName,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Your Name",
                        labelText: "Name",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
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
              //  currentAccountPicture: Image.asset("images/faisi1.jpg"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/faisi.png"),
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
        onPressed: () {
          //? this empty implementation of function (){} means void function
          myName = _nameController.text;
          setState(() {}); //* this is to reflect the change on UI
        },
        child: const Icon(Icons.send),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //? another property
    );
  }
}
