import 'package:flutter/material.dart';
import 'package:flutter_workshop_application/products_page.dart';
import 'package:lottie/lottie.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool isShowPassword = false;

bool validateFunction(context) {
  if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(emailController.text)) {
    ScaffoldMessenger.of(context) // context - current page.
        .showSnackBar(const SnackBar(
      content: Text("Incorrect Email"),
      backgroundColor: Colors.red,
    ));
    return false;
  } else if (passwordController.text.length < 4) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Incorrect Password"),
      backgroundColor: Colors.red,
    ));
    return false;
  } else {
    return true;
  }
}

void performLogin(BuildContext context) {
  if (validateFunction(context)) {
    // print('Login Successfully');
    if (emailController.text == 'demo@gmail.com' &&
        passwordController.text == '11111') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProductsPage(),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Wrong Credentials"),
        backgroundColor: Colors.red,
      ));
      // print("Wrong Credentials");
    }
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                obscureText: !isShowPassword,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye)),
                )),
            Container(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  performLogin(context);
                  // print(emailController.text);
                  // print(passwordController.text);
                },
                child: Text("Login"))
          ]),
    );
  }
}
