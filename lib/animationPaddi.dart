import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class AnimatedPadi extends StatefulWidget {
  final String title;
  AnimatedPadi({Key key, this.title}): super(key:key);

  @override
  AnimatedPadiState createState() => AnimatedPadiState();
}

class AnimatedPadiState extends State<AnimatedPadi> {
  double pad = 0;
   Widget cont(Color color){
     return Container(
       height: 200,
       width: 400,
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
            onPressed:(){
              launchUrl();
            } 
          ),
        ],
      ),
      body: SingleChildScrollView(
child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Container(
             margin: EdgeInsets.only(top: 20),
             child: Text("Clique sur ce rectangle, il sera un carré", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20), textAlign: TextAlign.center,),
         

           ), 

          GestureDetector(
            child: AnimatedPadding(
              duration: Duration(seconds: 4),
              padding: EdgeInsets.all(pad),
              curve: Curves.bounceIn,
              child:cont(Colors.blue),
            ),
            onTap: (){
              setState(() {
                if(this.pad ==0){
                  this.pad = 50;
                }
                else{
                  this.pad = 0;
                }
               
              });
            },
          ),
        ],

      ),

      )    
      ),
        );
  }
  void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/animationPaddi.dart');
}
}
