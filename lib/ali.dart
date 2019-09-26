import 'dart:math';

import 'package:flutter/material.dart';

class PageAlign extends StatefulWidget {
  final String title;
  PageAlign({Key key, this.title}) : super(key: key);
  @override
  _PageAlignState createState() => _PageAlignState();
}

class _PageAlignState extends State<PageAlign> {
  double x=1.0;
  double y=1.0;
  final List<double> myListHeight = [
  1.0,
  0.2,
  -0.3,
  -0.5,
  0.8,
  -0.3,
  0.5
];
double randomGeneratorHeigth() {
  return myListHeight[new Random().nextInt(7)];
}
void handleOnPressed() {
  setState(() {
    this.x = randomGeneratorHeigth();
    this.y = randomGeneratorHeigth();
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
        label: Text("Changer l'alignement"),
        icon: Icon(Icons.add),
        elevation: 5,

         ),
      body: Align(

        alignment: Alignment(x,y),
        child: buttonDesign('Parrainzo', Color(0xFF4fc3f7)),
      )
    );
  }

  Widget buttonDesign(String label, Color color) {
    return Container(
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: color,
        elevation: 4,
        shadowColor: Colors.grey[40],
        padding: EdgeInsets.all(4),
      ),
    );
  }
}
