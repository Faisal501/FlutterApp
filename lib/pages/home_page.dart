import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// stateless widget is that which dont change its state like text on scrreen
class _HomePageState extends State<HomePage> {
  // var myName = "Change Your Name";
  // final TextEditingController _nameController = TextEditingController();

  var url = "http://jsonplaceholder.typicode.com/photos";
  var res_data;

  @override
  void initState() {
    //? to initialize the state
    super.initState();
    fetchData(); //? this is custom function
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    res_data = jsonDecode(res.body);
    setState(() {}); //? when ever there is change in UI then call setState
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
      body: res_data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(res_data[index]["title"]),
                  subtitle: Text(
                      "ID : ${res_data[index]["id"]}"), //?  string interpolation
                  leading: Image.network(res_data[index]["url"]),
                );
              },
              itemCount: res_data.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer:
          const MyDrawer(), //? MyDrawer is a class which is returning the drawer widget created by ourself
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //? this empty implementation of function (){} means void function
          //  myName = _nameController.text;
          //  setState(() {}); //* this is to reflect the change on UI
        },
        child: const Icon(Icons.send),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //? another property
    );
  }
}
