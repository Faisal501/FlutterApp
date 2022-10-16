import 'package:flutter/material.dart';

import '../drawer.dart';
import '../my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// stateless widget is that which dont change its state like text on scrreen
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
            child: MyCardWidget(
                myName: myName,
                nameController: _nameController //? imported class
                ),
          ),
        ),
      ),
      drawer:
          const MyDrawer(), //? MyDrawer is a class which is returning the drawer widget created by ourself
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
