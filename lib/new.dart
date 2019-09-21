import 'package:exercice/mediaQ.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewPage extends StatefulWidget {
  final String title;
  NewPage({Key key, this.title}) : super(key: key);
  @override
  NewPageState createState() => NewPageState();
}

class NewPageState extends State<NewPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget.title'),
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
      backgroundColor: Colors.black,

      body: MediaQuery.of(context).orientation == Orientation.portrait
      ?first(context)
      : second(context),
    );
  }
  
  Widget first(BuildContext context){
    return Center(

      child:Container(
        height: 500,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10,),
            Stack(
              alignment: Alignment.centerRight,
          overflow: Overflow.visible,
          children: <Widget>[
            // Positioned(
            //   top: 19,
            //   left: 40,
            //   child: 
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 300,
                height: 95,
                color: Colors.white,
                padding: EdgeInsets.all(12),
                child: ListTile(
                  leading: Icon(Icons.voice_chat),
                  title: Text('ReorderableListView', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center,),
                  trailing: Icon(Icons.visibility, color: Colors.black,),
                )
              ),
            //),
            // Positioned(
            //   left: 10,
            //   top: 15,
            //   child: 
              Container(
                margin: EdgeInsets.only(right:250),
                height: 102,
                width: 102,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/flutter.png'), 
                ),
              ),
            //),
          ],
        ),
        SizedBox(height: 10,),
         Stack(
           alignment: Alignment.centerRight,
          overflow: Overflow.visible,
          children: <Widget>[
            // Positioned(
            //   top: 19,
            //   left: 40,
            //   child: 
              Container(
                 margin: EdgeInsets.only(right: 20),
                width: 300,
                height: 95,
                color: Colors.white,
                padding: EdgeInsets.all(12),
                child: ListTile(
                  leading: Icon(Icons.voice_chat),
                  title: Text('ReorderableListView', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center,),
                  trailing: Icon(Icons.visibility, color: Colors.black,),
                )
              ),
            //),
            // Positioned(
            //   left: 10,
            //   top: 15,
            //   child: 
            Container(
               margin: EdgeInsets.only(right: 250),
                height: 102,
                width: 102,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/flutter.png'), 
                ),
              ),
            //),
          ],
        ),
        SizedBox(height: 10,),
         Stack(
           alignment: Alignment.centerRight,
          overflow: Overflow.visible,
          children: <Widget>[
            // Positioned(
            //   top: 19,
            //   left: 40,
              //child:
               Container(
                  margin: EdgeInsets.only(right: 20),
                width: 300,
                height: 95,
                color: Colors.white,
                padding: EdgeInsets.all(12),
                child: ListTile(
                  leading: Icon(Icons.voice_chat),
                  title: Text('ReorderableListView', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center,),
                  trailing: Icon(Icons.visibility, color: Colors.black,),
                )
              ),
            //),
            // Positioned(
            //   left: 10,
            //   top: 15,
            //   child: 
            Container(
               margin: EdgeInsets.only(right: 250),
                height: 102,
                width: 102,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/flutter.png'), 
                ),
              ),
            //),
          ],
        ),
        SizedBox(height: 10,),
          ],
        )
      ),
      );
  }
  Widget second(BuildContext context){
    return Center(

      child:Container(
        height: 500,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10,),
            Stack(
              alignment: Alignment.center,
          overflow: Overflow.visible,
          children: <Widget>[
            // Positioned(
            //   top: 19,
            //   left: 40,
            //   child: 
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 300,
                height: 95,
                color: Colors.white,
                padding: EdgeInsets.all(12),
                child: ListTile(
                  leading: Icon(Icons.voice_chat),
                  title: Text('ReorderableListView', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center,),
                  trailing: Icon(Icons.visibility, color: Colors.black,),
                )
              ),
            //),
            // Positioned(
            //   left: 10,
            //   top: 15,
            //   child: 
              Container(
                margin: EdgeInsets.only(right:280),
                height: 102,
                width: 102,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/flutter.png'), 
                ),
              ),
            //),
          ],
        ),
        SizedBox(height: 10,),
         Stack(
           alignment: Alignment.center,
          overflow: Overflow.visible,
          children: <Widget>[
            // Positioned(
            //   top: 19,
            //   left: 40,
            //   child: 
              Container(
                 margin: EdgeInsets.only(right: 20),
                width: 300,
                height: 95,
                color: Colors.white,
                padding: EdgeInsets.all(12),
                child: ListTile(
                  leading: Icon(Icons.voice_chat),
                  title: Text('ReorderableListView', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center,),
                  trailing: Icon(Icons.visibility, color: Colors.black,),
                )
              ),
            //),
            // Positioned(
            //   left: 10,
            //   top: 15,
            //   child: 
            Container(
               margin: EdgeInsets.only(right: 280),
                height: 102,
                width: 102,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/flutter.png'), 
                ),
              ),
            //),
          ],
        ),
        SizedBox(height: 10,),
         Stack(
           alignment: Alignment.center,
          overflow: Overflow.visible,
          children: <Widget>[
            // Positioned(
            //   top: 19,
            //   left: 40,
              //child:
               Container(
                  margin: EdgeInsets.only(right: 20),
                width: 300,
                height: 95,
                color: Colors.white,
                padding: EdgeInsets.all(12),
                child: ListTile(
                  leading: Icon(Icons.voice_chat),
                  title: Text('ReorderableListView', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center,),
                  trailing: Icon(Icons.visibility, color: Colors.black,),
                )
              ),
            //),
            // Positioned(
            //   left: 10,
            //   top: 15,
            //   child: 
            Container(
               margin: EdgeInsets.only(right: 280),
                height: 102,
                width: 102,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/flutter.png'), 
                ),
              ),
            //),
          ],
        ),
        SizedBox(height: 10,),
          ],
        )
      ),
      );
  }

  void launchUrl() {
    launch(
        'https://github.com/ravivi/exercice/blob/master/lib/NewPage.dart');
  }
}
