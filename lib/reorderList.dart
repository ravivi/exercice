import 'package:flutter/material.dart';

class ReorderList extends StatefulWidget {
  final String title;
  ReorderList({Key key, this.title}): super(key:key);

  @override
  ReorderListState createState() => ReorderListState();
}

class ReorderListState extends State<ReorderList> {
  final List<String>myList=[
    'Parrainzo',
    'Geoffroy',
    'Marc-Henry',
    'Florentin',
    'Dao',
    'Zongo',


  ];
   final List<String>myListImage=[
    'Parrainzo',
    'Geoffroy',
    'Marc-Henry',
    'Florentin',
    'Dao',
    'Zongo',


  ];
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
            onPressed: (){},
          )
        ],
      ),
      body: ReorderableListView(
        children: <Widget>[
          for(final item in myList)
            Container(
              key: ValueKey(item),
              child: Card(
                child: ListTile(
              leading: 
                Icon(Icons.contact_phone),
                //backgroundColor: Colors.blueGrey,
              
              title: Text(item),
              trailing: IconButton(
                icon:Icon(Icons.call),
                onPressed: (){
                  
                },
                ),
            ),
              ), 
            )

          
        ],
        onReorder: (oldIndex, newIndex){
          setState(() {
           if(newIndex>oldIndex){
             newIndex -=1;
           }
           final item = myList.removeAt(oldIndex);
           myList.insert(newIndex, item); 
          });
        },

      ),
    );
  }
}