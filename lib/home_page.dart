// To create stateless page, Type - stl
// To create stateful page, Type - stf

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget is the return type, build is the method. // BuildContenxt refers to the current page contact.
    // widget is our super class. // every class extends widget.
    //scaffold - root widget of our class(perticular page root widget) , (gives the basic structure of our application)
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Pradeep's Home Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ), // Text() is converting it to Widget.
      ), // Navigation Bar

      body: Column(children: [
        Text("Hello World"),
        Image.network(
            'https://cdn.pixabay.com/photo/2019/12/16/10/49/building-4699096_640.jpg'),
        Text("Hello World"),
        TextField(),
        ElevatedButton(
            onPressed: () {
              print('Button Pressed');
            },
            child: Text("Submit"))
      ]),
    ); // Widget. // Placeholder is the subclass of widget.
  }
}
