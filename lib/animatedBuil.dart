import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

class AnimatedBuil extends StatefulWidget {
    final String title;
AnimatedBuil({Key key, this.title}): super(key:key);

  @override
  AnimatedBuilState createState() => AnimatedBuilState();
}

class AnimatedBuilState extends State<AnimatedBuil> with TickerProviderStateMixin {
  AnimationController controller ;
  Animation widAnimation;
void initState(){
  super.initState();
  controller = AnimationController(duration: Duration(seconds: 2), vsync: this);
   widAnimation = Tween(
    begin: 50.0,
    end: 100.0,
  ).animate(controller)..addStatusListener((status){
    if (status == AnimationStatus.completed){
      controller.reverse();
    }else if (status == AnimationStatus.dismissed){
      controller.forward();
    }
  });
}
void dispose(){
  controller.dispose();
  super.dispose();
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
           child: Container(
              margin: EdgeInsets.all(20),
              child: AnimatedBuilder(
                
                animation: widAnimation,
                builder:(BuildContext context, Widget child){
                    return Transform.rotate(
                      angle: controller.value*1/4*pi,
                      
                      child: Image.asset('images/imac.jpg',),
                    );

                  },
              
              ),
              
            )
          
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.photo),
        label: Text("anime l'image",
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        onPressed: (){
          setState(() {
            controller.repeat();
            controller.reverse();
          });
        },
      ),
    );
  }
     void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/AnimatedBuil.dart');
}
}