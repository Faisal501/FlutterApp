import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    Key? key,
    required this.myName,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myName;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
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
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
    );
  }
}
