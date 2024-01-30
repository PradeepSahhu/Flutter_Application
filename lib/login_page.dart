import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[600],
        title: Text(
          // Text widget
          "Login Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          children: [
            // ListView to add scrolling functionality of Column (widgets)
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Email Address',
                  border: OutlineInputBorder()),
            ),
            Container(
              height: 30,
            ),
            TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Password', border: OutlineInputBorder())),
            Container(
              height: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login"))
          ]),
    );
  }
}
