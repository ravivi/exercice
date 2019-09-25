import 'package:flutter/material.dart';


class PageWrap extends StatefulWidget {
  final String title;
  PageWrap({Key key, this.title}) : super(key: key);
  @override
  _PageWrapState createState() => _PageWrapState();
}

class _PageWrapState extends State<PageWrap> {
bool isAbord = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body:  Center(
          child: Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
          children: <Widget>[
          buttonDesign('Parrainzo', Color(0xFF4fc3f7)),
          buttonDesign('Géoffroy', Color(0xFFffb74d)),
          buttonDesign('Octave', Colors.red),
          buttonDesign('Florentin', Colors.tealAccent),
          buttonDesign('Marc-Henry', Colors.blueGrey),
          buttonDesign('Bassolé', Colors.brown),
          buttonDesign('Spirit', Colors.deepOrange),
          buttonDesign('Francky', Colors.indigo),
          buttonDesign('Opportune', Colors.pink),
          buttonDesign('Esther', Colors.lightBlueAccent.withOpacity(0.5)),
          buttonDesign('Colombe', Colors.purple),
          ],
        ),
        
      ),
    );

  }
Widget buttonDesign(String label, Color color){
  return Container(
    margin: EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
    child: Chip(avatar: CircleAvatar(
      backgroundImage: AssetImage('images/auteur.jpg'),
    ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,

        ),
      ),
      backgroundColor: color,
      elevation: 4,
      shadowColor: Colors.grey[40],
      padding: EdgeInsets.all(4),
    ),

  );
}

}