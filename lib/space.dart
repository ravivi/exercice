import 'package:flutter/material.dart';

class PageSapce extends StatefulWidget {
  final String title;
  PageSapce({Key key, this.title}) : super(key: key);
  @override
  _PageSapceState createState() => _PageSapceState();
}

class _PageSapceState extends State<PageSapce> {
  bool space = true;
  Color myColor = Colors.redAccent;
  String msg = 'Enlever les espaces';
  IconData icon = Icons.delete;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text(msg),

        elevation: 5,
          backgroundColor: myColor,
          
          onPressed: (){
           setState(() {
             space == true?space = false:space=true;
            space?msg ='Enlever les espaces':msg='ajouter les espaces';
            space?icon= Icons.delete: icon=Icons.add;
            space?myColor=Colors.redAccent:myColor= Colors.green; 
           });
          },
          icon: Icon(icon),),
      body: Center(
        child: Row(
          children: <Widget>[
            buttonDesign('Parrainzo', Color(0xFF4fc3f7)),
            space?
            Spacer(
              flex: 1,
            ):Container(),
            buttonDesign('Géoffroy', Color(0xFFffb74d)),
            space?
            Spacer(
              flex: 2,
            ):Container(),
            buttonDesign('Octave', Colors.red),
          ],
        ),
      ),
    );
  }

  Widget buttonDesign(String label, Color color) {
    return Container(
      child: Chip(
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
