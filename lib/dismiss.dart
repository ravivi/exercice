import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageDismis extends StatefulWidget {
  final String title;
PageDismis({Key key, this.title}): super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageDismisState();
      }
    
    }
    
    class PageDismisState extends State<PageDismis>{
      final GlobalKey<AnimatedListState> listKey = GlobalKey();
    List<String>myTab =[
        'Flutter',
        'Xamarin',
        'iOnic',
        'React Native',
      ];
       List<String>myNewTab =[
        'Dart',
        'C#',
        'JavaScript',
        'Java',
        'Python',
        'C',
        'C++',
        'R',
        'TypeScript',
        'Scalla',
        'Clojure',
      ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              launchUrl();
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: myNewTab.length,
        itemBuilder: (context, i){
          return Dismissible(
            key: Key('bonjour'),
        background: Container(
          padding: EdgeInsets.only(left: 12),
          alignment: Alignment.centerLeft,
          color: Colors.redAccent,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Text('Attention',
                style: TextStyle(color: Colors.white),
                ),
                
              ),
              Icon(Icons.warning),
            ],
          ),
        ),
        child: Card(
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/imac.jpg'),
          ) ,
          title: Text( myNewTab[i]),
          trailing: GestureDetector(
            child: Icon(Icons.delete, color: Colors.red,),
            onTap: (){
              
            },
          ),
        ),
      ),
          ); 
        },
      ),
    );
 
 
  }
       void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/dismiss.dart');
}
    }