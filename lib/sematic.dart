import 'package:flutter/material.dart';




class SematiEx extends StatefulWidget {
  final String title;
  SematiEx({Key key, this.title}): super(key:key);

  @override
  SematiExState createState() => SematiExState();
}

class SematiExState extends State<SematiEx> {

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
            
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child:  Semantics(
           child: Image.asset('images/belle.jpg', fit:BoxFit.cover),
           enabled: true,
           label: 'Image de belle maison',
           //readOnly: true,
         ),

          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Il s'agit d'une des plus belles maison que nous aurons la chance de regarder",style: TextStyle(fontSize: 20),textAlign:TextAlign.center,),
          )
        
        ],
      ),
    );
  }
}