import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/login_page.dart';
import 'package:flutter_app_1/utils/constants.dart';
import '../widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageFB extends StatelessWidget {
  static const String routeName = "/homeFB";
  Future fetchData() async {
    var url = "http://jsonplaceholder.typicode.com/photos";

    var res = await http.get(Uri.parse(url));
    var data = jsonDecode(res.body);
    return data; //? when ever there is change in UI then call setState
  }

  @override
  Widget build(BuildContext context) {
//? scaffold is a structure which contains some basic widgets like appbar etc.
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text("Faisi App"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Constants.prefs.setBool("LoggedIn", false);
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
              },
              icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(
                child: Text("Fetch Something"),
              );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return const Center(
                  child: Text("Some Error Occured"),
                );
              }

              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index]["title"]),
                    subtitle: Text(
                        "ID : ${snapshot.data[index]["id"]}"), //?  string interpolation
                    leading: Image.network(snapshot.data[index]["url"]),
                  );
                },
                itemCount: snapshot.data.length,
              );
          }
        },
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
