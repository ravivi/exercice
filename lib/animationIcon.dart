import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}): super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
      }
    
    }
    
    class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  @override
  AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState(){
    super.initState();
    _animationController= AnimationController (vsync: this, duration: Duration(milliseconds:300));
  }
  @override
  void dispose(){
    super.dispose();
    _animationController.dispose();
  }

  Widget build(BuildContext context){
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
        iconSize:50,
        icon:AnimatedIcon(
        icon: AnimatedIcons.pause_play,
        progress: _animationController,
      ),
      onPressed: handleOnpressed,

      ),

         ],
        ),
      ),  
    );
  }
  void handleOnpressed(){
    setState(() {
     isPlaying= !isPlaying;
     isPlaying
     ?_animationController.forward()
     :_animationController.reverse(); 
    });
  }
   void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/animationIcon.dart');
}
}