import 'package:flutter/material.dart';

class PageSiz extends StatefulWidget {
  final String title;
  PageSiz({Key key, this.title}) : super(key: key);
  @override
  _PageSizState createState() => _PageSizState();
}

class _PageSizState extends State<PageSiz> {
  bool isAbord = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(child: Wrap(
          spacing: 20.0,
          runSpacing: 10.0,
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 100,
              child: RaisedButton(
                color: Colors.yellow,
                onPressed: (){},
                child: Icon(Icons.work),
              ),
            ),
            SizedBox(
              height: 150,
              width: 70,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: (){},
                child: Icon(Icons.info),
              ),
            ),
            SizedBox(
              height: 100,
              width: 50,
              child: RaisedButton(
                color: Colors.greenAccent,
                onPressed: (){},
                child: Icon(Icons.school),
              ),
            )

          ],
        ),
        ),
        );
  }
}
