import 'package:flutter/material.dart';
import 'package:flutter_workshop_application/login_page.dart';

import 'products_page.dart';
// import 'package:flutter_workshop_application/login_page.dart';

// importing the HonePage file.
// import 'home_page.dart';

//Entry point of this application void main() function
//! completed
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // root widget of our entire application.
    title: 'My first app',
    home: LoginPage(),
  ));
}
