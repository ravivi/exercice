import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Aspect extends StatefulWidget {
    final String title;
Aspect({Key key, this.title}): super(key:key);

  @override
  AspectState createState() => AspectState();
}

class AspectState extends State<Aspect> {

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
            onPressed: (){},
          )
        ],
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            // Expanded(
            //   child :Align(
            //     alignment: Alignment.topCenter,
            //     child: AspectRatio(
            //   aspectRatio: 3/2,
            //   child: Image.asset('images/maison.jpg', fit: BoxFit.cover,),
            // ),),
                 
            // ),
          
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.35,
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              child: AspectRatio(
              aspectRatio: 5/2,
              child: Image.asset('images/belle.jpg', fit: BoxFit.cover,),
            ),
            ),
           
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.35,
             child: Container(
               height: MediaQuery.of(context).size.height * 0.6,
               child: AspectRatio(
              aspectRatio: 5/2,
              child: Image.asset('images/belle.jpg', fit: BoxFit.cover,),
            ),

             ),
            ),
              Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.35,
             child: Container(
               height: MediaQuery.of(context).size.height * 0.6,
               child: AspectRatio(
              aspectRatio: 5/2,
              child: Image.asset('images/villa.jpg', fit: BoxFit.cover,),
            ),

             ),
            ),

          ],
        ),
        ),
    );
  }
}