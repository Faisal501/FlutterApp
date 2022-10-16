import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";

  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/faisi1.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              controller: _usernameController,
                              keyboardType: TextInputType.emailAddress,
                              validator: (s) {
                                return null;
                              },
                              decoration: const InputDecoration(
                                hintText: "Enter Email",
                                labelText: "Username",
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              validator: (s) {
                                return null;
                              },
                              decoration: const InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password",
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                //  formkey.currentState.validate();
                                //Navigator.push(
                                // context,
                                // MaterialPageRoute(
                                //     builder: (context) =>
                                //         const HomePage()));
                                Navigator.pushNamed(
                                    context, HomePage.routeName);
                              },
                              child: const Text("Sign In"),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
