import 'package:flutter/material.dart';
import 'dart:math';


class PageAbord extends StatefulWidget {
  final String title;
  PageAbord({Key key, this.title}) : super(key: key);
  @override
  _PageAbordState createState() => _PageAbordState();
}

class _PageAbordState extends State<PageAbord> {
bool isAbord = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: AbsorbPointer(
        absorbing: isAbord,
        child: Center(
          child: Wrap(
            spacing: 20,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 48,
          children: <Widget>[
            Tooltip(
              message: 'Bonjour je suis Container',
              child: Container(
                height: 100,
                width: 100,
                color: Colors.greenAccent,
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Appuyez'),
                ),
              ),

            )
          ],
        ),
        ) 
      ),
    );

  }


}