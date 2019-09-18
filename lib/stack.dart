import 'package:flutter/material.dart';

class StackEx extends StatefulWidget {
  final String title;
  StackEx({Key key, this.title}): super(key:key);

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
            onPressed: (){},
          )
        ],
      ),
      body: Center(
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: double.infinity,
              child: Image.asset('images/maison.jpg', fit:BoxFit.cover),
            ),
            Positioned(
              top: 150,
            
              left: 100,
              child: Container(
                
                height: 100,
                width: 200,
               child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                  
                ),
                
              ),
              )
              
            ),
             Positioned(
              top: 200,
            
              left: 120,
              child: Container(
                margin: EdgeInsets.only(top:20),
                height: 100,
                width: 200,
               child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                  
                ),
                
              ),
              )
              
            ),
              Positioned(
              top: 250,
            
              left: 200,
              child: Container(
                margin: EdgeInsets.only(top:20),
                
               child: RaisedButton(
                 child: Text('Connexion', style: TextStyle(color: Colors.white),),
                 color: Colors.redAccent,
                 onPressed: (){},
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(100)
                 ),
               )
              )
              
            ),
            //  Positioned(
            //     bottom: 30,
            //   left: 20,
            //   child: TextField(
            //     decoration: InputDecoration(
            //       labelText: 'Password',
            //       icon: Icon(Icons.vpn_key),
                  
            //     ),
                
            //   ),
            //  ),
          ],
        ),
      )
    );
  }
}