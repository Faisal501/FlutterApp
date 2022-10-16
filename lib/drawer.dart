import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
