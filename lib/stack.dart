import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StackEx extends StatefulWidget {
  final String title;
  StackEx({Key key, this.title}) : super(key: key);

  @override
  StackExState createState() => StackExState();
}

class StackExState extends State<StackEx> {
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
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Container(
            
              color: Colors.black,
               height: double.infinity,
               width: double.infinity,
               child:Opacity(
                 
                 opacity: 0.7,
                 child: Image.asset('images/maison.jpg', fit:BoxFit.cover),
               ), 
            ),
             Positioned(
              top: 10,
                left: 50,
                child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                width: 300,
                child: Text('Login', style: TextStyle(color: Colors.red, fontSize: 50, fontWeight: FontWeight.bold),),
                
              ),),
            Positioned(
              top: 80,
                left: 10,
                child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      
                      filled: true,
                      //hintStyle: TextStyle(color: Colors.grey[800]),
                      labelText: "Email",
                      fillColor: Colors.transparent),
                ),
              ),),
            Positioned(
              top: 160,
              left: 60,
              child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      //hintStyle: TextStyle(color: Colors.grey[800]),
                      labelText: "Password",
                      fillColor: Colors.transparent),
                ),
              ),
            ),
            Positioned(
                top: 210,
                left: 100,
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                    margin: EdgeInsets.only(top: 30),
                    child: RaisedButton(
                      child: Text(
                        'Connexion',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.redAccent,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                    )),
                    Container(
                    margin: EdgeInsets.only(top: 30),
                    child: FlatButton(
                      child: Text(
                        "Mot de passe oublié",
                        style: TextStyle(color: Colors.lightBlueAccent, fontSize: 15),
                      ),
                      //color: Colors.redAccent,
                      onPressed: () {},
                    ))

                  ],
                ) ),
            
          ],
        ),
      ),
    );
  }

  void launchUrl() {
    launch('https://github.com/ravivi/exercice/blob/master/lib/stack.dart');
  }
}
