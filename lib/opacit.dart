import 'dart:math';

import 'package:flutter/material.dart';

class PageOpa extends StatefulWidget {
  final String title;
  PageOpa({Key key, this.title}) : super(key: key);
  @override
  _PageOpaState createState() => _PageOpaState();
}

class _PageOpaState extends State<PageOpa> {
  double changeOpa=1.0;

  final List<double> myListHeight = [
  1.0,
  0.9,
  0.8,
  0.7,
  0.6,
  0.5,
  0.4,
  0.3,
  0.2,
  0.1,
];
double randomGeneratorHeigth() {
  return myListHeight[new Random().nextInt(10)];
}
void handleOnPressed() {
  setState(() {
    this.changeOpa = randomGeneratorHeigth();
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: handleOnPressed,
        label: Text("Changer l'opacité"),
        icon: Icon(Icons.add),
        elevation: 5,

         ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Opacity(
            opacity: changeOpa,
            child: Image.asset('images/nan.jpg',fit:BoxFit.contain),
          ),
        ),
      )
    );
  }
}
