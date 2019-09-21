import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RichEx extends StatefulWidget {
  final String title;
  RichEx({Key key, this.title}) : super(key: key);

  @override
  RichExState createState() => RichExState();
}

class RichExState extends State<RichEx> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Exercie 3'),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black,
                    
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Sans le savoir",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    TextSpan(
                      text: " Vous avez peut être sur votre ordinateur",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
          
              GestureDetector(
                onTap: (){
                  scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                        Icon(Icons.warning),
                        Text('Danger', style: TextStyle(color: Colors.white, fontSize: 16),)
                      ],),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 2),
                      )
                      );
                },
                child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black,
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          " Des programmes qui sont potentiellement dangereux",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ],
                ),
              ),

              ),
              
            ],
          ),
          GestureDetector(
            onTap: launchUrl,
            child:  RichText(
            text: TextSpan(
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.black,
                height: 1.5,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: " Lire plus ...",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Quicksand-Light',
                  ),
                ),
              ],
            ),
          ),

          ),
         
        ],
      ),
    );
  }
  Widget snack(BuildContext context){
    return SnackBar(
      content: Icon(Icons.warning),
      backgroundColor: Colors.red,
      
    );
  }

  void launchUrl() {
    launch('https://toucharger.com');
  }
}
