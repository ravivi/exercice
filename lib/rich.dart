import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Rich extends StatefulWidget {
  final String title;
  Rich({Key key, this.title}): super(key:key);

  @override
  RichState createState() => RichState();
}

class RichState extends State<Rich> {

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
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
Padding(
        padding: EdgeInsets.all(12),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: Colors.black,
              height: 1.5,
            ),
            children: <TextSpan>[
                TextSpan(text: "Bienvenu a NaN"),
                TextSpan(text: " Not a Number",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                
                ),
                
                ),
                TextSpan(text: " La première ecole de programmation atypique de côte d'Ivoire",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 14,),
                
                ),
                TextSpan(text: " Elle se situe a Abidjan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  color: Colors.redAccent,
                  fontSize: 18,),
                  
                
                ),
                TextSpan(text: " Precisement a Angré",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.red,
                  fontSize: 18,),
                ),
            ],
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(12),
        child: Image.asset('images/nan.PNG'),
      )
        ],
      ) 
    );
  }
   void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/Rich.dart');
}
}