import 'package:flutter/material.dart';

class PagePosi extends StatefulWidget {
  final String title;
  PagePosi({Key key, this.title}) : super(key: key);
  @override
  _PagePosiState createState() => _PagePosiState();
}

class _PagePosiState extends State<PagePosi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 200,
              width: 200,
            ),
            Positioned.fill(
              child: FlutterLogo(size: 100, colors: Colors.grey,),
            )
          ],
        )
      )
    );
  }
}
