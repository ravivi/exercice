import 'package:flutter/material.dart';

class PageStream extends StatefulWidget {
  final String title;
  PageStream({Key key, this.title}) : super(key: key);
  @override
  _PageStreamState createState() => _PageStreamState();
}

class _PageStreamState extends State<PageStream> {
  var counter = Stream<double>.periodic(
    Duration(milliseconds: 100), (x)=>(x*2).toDouble()).take(101);
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
                floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 5,
          backgroundColor: Colors.redAccent,
          onPressed: click ==false? (){
            setState(() {
             click ==false
             ? click=true
             :click = false;

            });

          }:null,
          child: Icon(Icons.add),),
        body: SingleChildScrollView(
          child: Center(
            child: StreamBuilder(
              stream: click?counter:null,
              builder: (context,snapshot){
                if(!snapshot.hasData){
                return Container(
                  margin:EdgeInsets.all(20),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),

                );
                }
                return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(12),
                height: snapshot.data,
                width: snapshot.data,
                child: Image.asset('images/imac.jpg', fit:BoxFit.cover),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: Text('Hauteur ${snapshot.data}'),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: Text('Largeur ${snapshot.data}'),
              )

            ],
          );
              },
            ),
          ) 
        ),
        );
  }
}
