import 'package:flutter/material.dart';

class PageExp extends StatefulWidget {
  final String title;
  PageExp({Key key, this.title}) : super(key: key);
  @override
  _PageExpState createState() => _PageExpState();
}

class _PageExpState extends State<PageExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.tealAccent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.purple,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          ),

        ],
      )
    );
  }
}
