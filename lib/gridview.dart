import 'package:flutter/material.dart';

class Paginainicial extends StatefulWidget {
  const Paginainicial({Key? key}) : super(key: key);
  @override //
  _MyHomePageState createState() => _MyHomePageState();
} //widget con estado

class _MyHomePageState extends State<Paginainicial> {
  List<String> images = [
    "assets/images/J.jpg",
    "assets/images/d.jpg",
    "assets/images/f.jpeg",
    "assets/images/i.jpg",
    "assets/images/J.jpg",
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
