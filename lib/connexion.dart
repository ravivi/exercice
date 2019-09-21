import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  //final String title;
//AnimatedPos({Key key, this.title}): super(key:key);

  @override
  ConnexionState createState() => ConnexionState();
}

class ConnexionState extends State<Connexion> {
  bool show = false;
  bool show2 = false;
  double pad = 0;
  Widget cont(double height, double width, Color color) {
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
        title: Text('Connexion'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
                top: 210,
                left: 140,
                right: 100,
                //bottom: 10,
                child: AnimatedPadding(
                  duration: Duration(seconds: 4),
                  padding: EdgeInsets.only(right: pad, left: pad),
                  curve: Curves.bounceInOut,
                  child: Container(
                    child: Text(
                      'Bienvenu',
                      style: TextStyle(color: Colors.redAccent, fontSize: 15),
                    ),
                  ),
                )),
            AnimatedPositioned(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(seconds: 5),
              top: show ? -150 : 100,
              left: show ? 10 : 10,
              right: show ? 10 : 10,
              child: Container(
                  height: 300,
                  width: 200,
                  color: Colors.tealAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(Icons.edit_location,
                            size: 40, color: Colors.white),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Draggable(
                          child: form(),
                          feedback: Material(
                            child: LimitedBox(
                              maxHeight: 100,
                              maxWidth: 250,
                              child: form(),
                            ),
                            ),
                            childWhenDragging: form(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Draggable(
                          child: form(),
                          feedback: Material(
                            child: LimitedBox(
                              maxHeight: 100,
                              maxWidth: 250,
                              child: form(),
                            ),
                            ),
                            childWhenDragging: form(),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 30),
                          child: RaisedButton(
                            child: Text(
                              'Connexion',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.redAccent,
                            onPressed: () {
                              setState(() {
                                if (show == false && this.pad == 0) {
                                  show = true;
                                  this.pad = 25;
                                } else {
                                  show = false;
                                  this.pad = 0;
                                }
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget form() {
    return TextField(
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
    );
  }
}
