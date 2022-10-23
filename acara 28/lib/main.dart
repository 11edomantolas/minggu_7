import 'package:flutter_application_1/drawer.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/pengaturan.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/registrasi.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: LoginForm()));
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Kuy",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(
                    Icons.error,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(
                    Icons.error,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydrawer(),
                  ));
                },
                child: Text("Login"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistrasiForm(),
                  ));
                },
                child: Text("Registrasi"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
