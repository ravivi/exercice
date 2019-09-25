import 'package:flutter/material.dart';

class PageFit extends StatefulWidget {
  final String title;
  PageFit({Key key, this.title}) : super(key: key);
  @override
  _PageFitState createState() => _PageFitState();
}

class _PageFitState extends State<PageFit> {
  var box = BoxFit.fill;
  bool press = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(child:Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          color: Colors.orange,
        

         child:   FittedBox(
              fit: press?box= BoxFit.cover:box=BoxFit.contain,
              child: Container(
                height: 100,

              child: RaisedButton(
                color: Colors.yellow,
                onPressed: (){},
                child: Icon(Icons.work),
              ),
              ),
            ),
        ),

         
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 5,
          backgroundColor: Colors.redAccent,
          onPressed: handleOnPressed,
          child: Icon(Icons.slideshow),),
        );
  }
  void handleOnPressed(){
    setState(() {
      press = !press;
      
      
    });

  }
}
