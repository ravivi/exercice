import 'package:flutter/material.dart';

class AnimatedSw extends StatefulWidget {
    final String title;
AnimatedSw({Key key, this.title}): super(key:key);

  @override
  AnimatedSwState createState() => AnimatedSwState();
}

class AnimatedSwState extends State<AnimatedSw> {
 bool isSwitch = false;
Widget myAnimation =Container(key:ValueKey(1) ,child: Image.asset('images/belle.jpg' ,fit:BoxFit.cover),);

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child:AnimatedSwitcher(
          duration: Duration(seconds: 4),
          transitionBuilder: (Widget child, Animation<double> animation){
            return ScaleTransition(
              child: child,
              scale: animation,
            );
            
          },
          child: myAnimation
        ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.photo),
        label: Text('Voir une autre photo',
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        onPressed: (){
          setState(() {
           myAnimation = isSwitch
           ? Container(key:ValueKey(2) ,child: Image.asset('images/belle.jpg' ,fit:BoxFit.cover),)
           :Container(key:ValueKey(3) ,child: Image.asset('images/villa.jpg' ,fit:BoxFit.cover),);
           isSwitch ? isSwitch = false: isSwitch = true; 
          });
        },
      ),
    );
  }
}