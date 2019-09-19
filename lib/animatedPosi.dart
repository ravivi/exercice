import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedPosi extends StatefulWidget {
    final String title;
AnimatedPosi({Key key, this.title}): super(key:key);

  @override
  AnimatedPosiState createState() => AnimatedPosiState();
}

class AnimatedPosiState extends State<AnimatedPosi> {
 bool show = false;
 bool show2 = false;
   Widget cont(double height,double width,Color color){
     return Container(
       height: height,
       width: width,
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
      body: Center(
        child: Stack(
          alignment: Alignment.centerRight,
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              top: 210,
              left: 0,
              right: 0,
              //bottom: 10,
              child:Text("Click sur un carré", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),),

            ),
            Positioned(
              child: cont(200,200,Colors.blue),
            ),
            
               AnimatedPositioned(
                 curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(seconds: 5),
              top: show?-50:20,
              left: show?-50:20,

              child:GestureDetector(
                child: cont(150,150,Colors.orange),
                 onTap: (){
                   setState(() {
                     if(show==false){
                       show= true;

                     }else{
                       show= false;
                     }
                     
                    
                     
                   });
                 },
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 5),
              curve: Curves.linear,
              top: show2?-70:45,
              left: show2?-70:45,

              child:GestureDetector(
                child: cont(100,100,Colors.blueGrey),
                 onTap: (){
                   setState(() {
                     if(show2 == false){
                       show2=true;
                     }
                     else{
                       show2=false;
                     }
                     
                   });
                 },
              ),
            ),
           
           

          ],
        ),
      ),
    );
  }
     void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/animatedPosi.dart');
}
}