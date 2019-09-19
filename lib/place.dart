import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Place extends StatefulWidget {
    final String title;
Place({Key key, this.title}): super(key:key);

  @override
  PlaceState createState() => PlaceState();
}

class PlaceState extends State<Place> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              launchUrl();
            },
          )
        ],
      ),
     body: Column(
       children: <Widget>[
         Placeholder(
           fallbackHeight: 100,
           color: Colors.black,
           strokeWidth: 2,
         ),
         Placeholder(
           fallbackHeight: 150,
           color: Colors.teal,
           strokeWidth: 5,
         ),

       ],
     ),
    );
  }
    void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/Place.dart');
}
}
