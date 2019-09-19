import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedOpa extends StatefulWidget {
  final String title;
  AnimatedOpa({Key key, this.title}): super(key:key);

  @override
  AnimatedOpaState createState() => AnimatedOpaState();
}

class AnimatedOpaState extends State<AnimatedOpa> {
 double opacity1 = 1.0;
  double opacity2 = 1.0;
   Widget cont(Color color){
     return Container(
       height: 100,
       width: 100,
       color: color,

     );
   }
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
        children: <Widget>[
            Text("Click sur un carré et tu verras l'animation", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20), textAlign: TextAlign.center,),
            Padding(
              padding: EdgeInsets.all(30),
            ),
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          GestureDetector(
            child: AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: opacity1,
              curve: Curves.bounceInOut,
              child:cont(Colors.blue),
            ),
            onTap: (){
              setState(() {
                this.opacity1 = 1.0 - this.opacity1; 
              });
            },
          ),
            GestureDetector(
            child: AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: opacity2,
              curve: Curves.elasticInOut,
              child:cont(Colors.red),
            ),
            onTap: (){
              setState(() {
                this.opacity2 = 1.0 - this.opacity2; 
              });
            },
          ),
       
        ],

      ), 
        ],

      ),
    );
  }
    void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/animationOpacity.dart');
}
}