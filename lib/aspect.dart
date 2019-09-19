import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Aspect extends StatefulWidget {
  final String title;
  Aspect({Key key, this.title}) : super(key: key);

  @override
  AspectState createState() => AspectState();
}

class AspectState extends State<Aspect> {
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
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? firstWidget(context)
          : secondWidget(context),
    );
  }

  Widget firstWidget(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          height: 100,
          width: 100,
          child: Image.asset(
            'images/villa.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 100,
          width: 100,
          child: Image.asset(
            'images/belle.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 100,
          width: 100,
          child: Image.asset(
            'images/villa.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget secondWidget(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.35,
            maxHeight: MediaQuery.of(context).size.height * 0.6,
          ),
          child: AspectRatio(
            aspectRatio: 5 / 2,
            child: Image.asset(
              'images/belle.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.35,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: AspectRatio(
              aspectRatio: 5 / 2,
              child: Image.asset(
                'images/belle.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.35,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: AspectRatio(
              aspectRatio: 5 / 2,
              child: Image.asset(
                'images/villa.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void launchUrl() {
    launch('https://github.com/ravivi/exercice/blob/master/lib/aspect.dart');
  }
}
