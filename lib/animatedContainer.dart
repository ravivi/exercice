import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';


class Page extends StatefulWidget {
  final String title;
  Page({Key key, this.title}) : super(key: key);
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
Color myStateColor ;
  final List<Color> myColors = [
    Colors.purple,
    Colors.white,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red
  ];
final List<double> myListHeight = [
  100.0,
  200.0,
  50.0,
  120.0,
  300.0,
  70.0,
  250.0
];
final List<double> myListWidth = [
  100.0,
  200.0,
  50.0,
  120.0,
  300.0,
  70.0,
  250.0
];
double randomGeneratorWidth() {
  return myListWidth[new Random().nextInt(7)];
}
double randomGeneratorHeigth() {
  return myListHeight[new Random().nextInt(7)];
}
  Color randomGenerator() {
    return myColors[new Random().nextInt(7)];
  }
double height = 100.0;
 double width = 100.0;
void _handleOnPressed() {
  setState(() {
    this.myStateColor = randomGenerator();
    this.height = this.height - 20;
    this.width = this.width - 50;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              launchUrl();
            },
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
            child: Opacity(opacity: 0.7,
            child: Image.asset('images/maison.jpg', fit: BoxFit.cover,),)
          ),
          Positioned(
              child: Center(
                child: AnimatedContainer(duration: Duration(seconds: 2),
                  curve: Curves.easeInBack,
                  color: randomGenerator(),
                  height: randomGeneratorHeigth(),
                  width: randomGeneratorWidth(),
                  child: Image.asset(''),
                ),

              ), ),
        ],
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 5,
          backgroundColor: Colors.redAccent,
          onPressed: _handleOnPressed,
          child: Icon(Icons.slideshow),),

    );

  }
   void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/AnimatedContainer.dart');
}

}