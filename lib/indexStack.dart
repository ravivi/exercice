import 'package:flutter/material.dart';
import './animationIcon.dart';
import './animatedPosi.dart';
import './animationListe.dart';
import './animationOpacity.dart';
import './animationPaddi.dart';

class IndexStack extends StatefulWidget {
    final String title;
IndexStack({Key key, this.title}): super(key:key);

  @override
  IndexStackState createState() => IndexStackState();
}

class IndexStackState extends State<IndexStack> {
  int ind=0;
 
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
            onPressed: (){},
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.ondemand_video),
              onPressed: (){
                setState(() {
                 this.ind=0; 
                });
              },
            ),
             IconButton(
              icon: Icon(Icons.ondemand_video),
              onPressed: (){
                setState(() {
                 ind=1;  
                });
              },
            ),
             IconButton(
              icon: Icon(Icons.ondemand_video),
              onPressed: (){
                setState(() {
                 this.ind=2;  
                });
              },
            )
          ],
        ),
      ),
      body: Center(
        child: IndexedStack(
          index: ind,
          children: <Widget>[
            cont(100, 100, Colors.blue),
            cont(100, 100, Colors.red),
            cont(100, 100, Colors.orange),

          ],
        ),
        ),
    );
  }
}