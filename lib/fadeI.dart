import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class PageFadI extends StatefulWidget {
  final String title;
  PageFadI({Key key, this.title}) : super(key: key);
  @override
  _PageFadIState createState() => _PageFadIState();
}

class _PageFadIState extends State<PageFadI> {
final String url ='https://venturebeat.com/wp-content/uploads/2019/05/flutter-mobile-desktop-web-embedded.png?fit=400%2C200&strip=all';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body:  
          //   CircularProgressIndicator(
          //   valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          // ),
           Center(
          child: FadeInImage.assetNetwork(
            height: 300,
            fadeInCurve: Curves.bounceInOut,
            fadeInDuration: Duration(seconds: 3),
           
            placeholder: 'images/loading.gif',
            image: url,
          ),
        ), 
    );

  }
}