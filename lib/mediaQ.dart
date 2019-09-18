import 'package:flutter/material.dart';


class MediaQ extends StatefulWidget {
    final String title;
MediaQ({Key key, this.title}): super(key:key);

  @override
  MediaQState createState() => MediaQState();
}

class MediaQState extends State<MediaQ> {
 
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
     body: MediaQuery.of(context).orientation == Orientation.portrait
            ?firstWidget(context)
            :secondWidget(context),
    );
  }
}
Widget firstWidget(BuildContext context){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8),
          child: Text("Les info de mon téléphone",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.red),
          ),

        ),
         Padding(
          padding: EdgeInsets.all(8),
          child: Text("Hauteur : ${MediaQuery.of(context).size.height} "),
          
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text("Largeur : ${MediaQuery.of(context).size.width} "),
          
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text('Orientation : ${MediaQuery.of(context).orientation} '),
          
        ),
         Padding(
          padding: EdgeInsets.all(8),
          child: Text('Briallance : ${MediaQuery.of(context).platformBrightness}  '),
          
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text('Taille : ${MediaQuery.of(context).size}  '),
          
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text('Ratio : ${MediaQuery.of(context).devicePixelRatio}  '),
          
        ),
      ],
    ),
  );
}
Widget secondWidget(BuildContext context){
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8),
          child:Text("Les info de mon téléphone",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.red),
          ),

        ),
        Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8),
          child: Text("Les info de mon téléphone"),

        ),
         Padding(
          padding: EdgeInsets.all(8),
          child: Text("Hauteur : ${MediaQuery.of(context).size.height} "),
          
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text("Largeur : ${MediaQuery.of(context).size.width} "),
          
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text('Orientation : ${MediaQuery.of(context).orientation} '),
          
        ),
         Padding(
          padding: EdgeInsets.all(8),
          child: Text('Briallance : ${MediaQuery.of(context).platformBrightness}  '),
          
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text('Taille : ${MediaQuery.of(context).size}  '),
          
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text('Ratio : ${MediaQuery.of(context).devicePixelRatio}  '),
          
        ),
      ],
    ),
      ],
    ),
  );
}