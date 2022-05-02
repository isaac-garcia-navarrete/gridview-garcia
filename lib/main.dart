import 'package:flutter/material.dart';

import 'package:garcia/gridview.dart';

void main() {
  runApp(IzzIApp());
}

class IzzIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'EjemploGridview', //pestaña en web
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ), //tema de color global
        home: const Paginainicial());
  }
} //widget sin estado
