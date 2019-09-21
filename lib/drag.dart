import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:url_launcher/url_launcher.dart';

class Drag extends StatefulWidget {
  final String title;
  Drag({Key key, this.title}) : super(key: key);
  @override
  DragState createState() => DragState();
}

class DragState extends State<Drag> {
  bool isSuccess = false;
  Image caughtImg;

  List<Image> tabImg = [
    Image.asset('images/villa.jpg'),
    Image.asset('images/belle.jpg'),
    Image.asset('images/maison.jpg'),
  ];

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
            onPressed: () {
              launchUrl();
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                child: GridView.builder(
                    itemCount: tabImg.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, i) {
                      return Draggable<Image>(
                        data: tabImg[i],
                        child: Container(
                            padding: EdgeInsets.all(8),
                            height: 50.0,
                            width: 20.0,
                            child: tabImg[i]),
                        feedback: Container(
                            height: 50.0, width: 50.0, child: tabImg[i]),
                        childWhenDragging: Container(
                            height: 50.0, width: 50.0, child: tabImg[i]),
                      );
                    }),
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                height: 500,
                width: 500,
                child: DragTarget<Image>(
                  builder: (context, List<Image> candidateData, rejectedData) {
                    if (isSuccess == true) {
                      return Container(
                        width: 300,
                        height: 300,
                        child: caughtImg,
                      );
                    } else {
                      return Container();
                    }
                  },
                  onWillAccept: (data){
                 if(tabImg.length >0){
                   return isSuccess= true;
                 }else{
                   return isSuccess= false;
                 }
               },
               onAccept: (data){
                 print(data);
                 setState(() {
                   caughtImg = data;
                 });
                 print(caughtImg);
               },
                ),
              ),
              flex: 4,
            )
          ],
        ),
      ),
    );
  }

  void launchUrl() {
    launch(
        'https://github.com/ravivi/exercice/blob/master/lib/drag.dart');
  }
}
