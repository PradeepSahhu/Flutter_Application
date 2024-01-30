import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool validateFunction() {
  if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(emailController.text)) {
    print("Email is incorrect");
    return false;
  } else if (passwordController.text.length < 4) {
    print("password is incorrect");
    return false;
  } else {
    return true;
  }
}

void performLogin() {
  if (validateFunction()) {
    print('Login Successfully');
  }
}

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
            Lottie.network(
                'https://lottie.host/2fdbaba5-7379-49a5-a05f-64df89761a6b/RLcurpb40t.json',
                height: 650),
            // ListView to add scrolling functionality of Column (widgets)
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Enter Email Address',
                  border: OutlineInputBorder()),
            ),
            Container(
              height: 30,
            ),
            TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter Password', border: OutlineInputBorder())),
            Container(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  performLogin();
                  // print(emailController.text);
                  // print(passwordController.text);
                },
                child: Text("Login"))
          ]),
    );
  }
}
