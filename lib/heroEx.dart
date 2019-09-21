import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroEx extends StatefulWidget {
  final String title;
  HeroEx({Key key, this.title}) : super(key: key);

  @override
  _HeroExState createState() => _HeroExState();
}

class _HeroExState extends State<HeroEx> {
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
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: 'hero',
            child: Image.asset(
              'images/flutter.png',
              fit: BoxFit.cover,
            ),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Hero Detail'),
                ),
                body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child:  Semantics(
           child: Container(
                  // The blue background emphasizes that it's a new route.
                  color: Colors.lightBlueAccent,
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Hero(
                    tag: 'hero',
                    child: GestureDetector(
                      child: Image.asset(
                        'images/flutter.png',
                        fit: BoxFit.cover,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
           enabled: true,
           label: 'Image de belle maison',
           //readOnly: true,
         ),

          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Il s'agit d'une des plus belles maison que nous aurons la chance de regarder",style: TextStyle(fontSize: 20),textAlign:TextAlign.center,),
          )
        
        ],
      ),
                 
              );
            }));
            //timeDilation:4.0;
          },
        ),
      ),
    );
    
  }

  void launchUrl() {
    launch(
        'https://github.com/ravivi/exercice/blob/master/lib/drag.dart');
  }
}
