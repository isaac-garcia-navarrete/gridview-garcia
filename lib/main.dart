import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ejemplo.Gridview', //pestaña en web
        theme: ThemeData(
          primarySwatch: Colors.green,
        ), //tema de color global
        home: const MyHomePage());
  }
} //widget sin estado
