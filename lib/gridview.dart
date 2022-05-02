import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override //
  _MyHomePageState createState() => _MyHomePageState();
} //widget con estado

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/J.jpg",
    "assets/images/d.jpg",
    "assets/images/f.jpeg",
    "assets/images/i.jpg",
    "assets/images/izzi.jpg",
    "assets/images/d.jpg",
    "assets/images/f.jpeg",
    "assets/images/i.jpg",
  ]; //lista dw imagenes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView"),
        ),
        body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
