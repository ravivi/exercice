import 'package:flutter/material.dart';

class PageTab extends StatefulWidget {
  final String title;
  PageTab({Key key, this.title}) : super(key: key);
  @override
  _PageTabState createState() => _PageTabState();
}

class _PageTabState extends State<PageTab> {
  bool isAbord = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 12),
          child: Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.top,
            children: <TableRow>[
              TableRow(children: <Widget>[
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    margin: EdgeInsets.all(2),
                    width: 48,
                    height: 100,
                    child: Image.asset('images/flutter.png', fit: BoxFit.cover),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                    child: Center(
                      child:
                          Image.asset('images/xamarin.png', fit: BoxFit.cover),
                    ),
                  ),
                ),
              ])
            ],
          ),
        ));
  }
}
