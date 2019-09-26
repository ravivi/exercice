import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageBack extends StatefulWidget {
  final String title;
PageBack({Key key, this.title}): super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageBackState();
      }
    
    }
    
    class PageBackState extends State<PageBack>{
      double backValue =0.0;
     
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              launchUrl();
            },
          )
        ],
      ),
      body: SingleChildScrollView( child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(24),
                height: 200,
                width: 200,
                child: Image.asset('images/imac.jpg'),
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: prefix0.ImageFilter.blur(
                    sigmaX: backValue,
                    sigmaY: backValue,
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0.0),
                  ),

                ),
              )
            ],
          ),
          Slider(
            value: backValue,
            activeColor: Colors.redAccent,
            min: 0.0,
            max: 10.0,
            label: '${backValue.truncate()}',
            onChanged: (double value){
              setState(() {
               backValue = value; 
              });
            },
          )
        ],
      ),
      )
     

    );
  }
 
      void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/backdrop.dart');
}
  }