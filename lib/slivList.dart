import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageSilvList extends StatefulWidget {
  final String title;
PageSilvList({Key key, this.title}): super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageSilvListState();
      }
    
    }
    
    class PageSilvListState extends State<PageSilvList>{
       List<String>myTab =[
        'Flutter',
        'Xamarin',
        'iOnic',
        'React Native',
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
    body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 200.0,
            backgroundColor: Colors.redAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Maison", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Arial',),),
              background: Image.asset("images/imac.jpg", fit: BoxFit.cover
              ),
            ),
          ),
          SliverList(

            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int i){
                if (i > myTab.length-1) {return null;}
                else{
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/imac.jpg',),
                ),
              title: Text(myTab[i],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
              trailing:RaisedButton(
                        child: Text("Interessé"),
                        onPressed: () {
                        //  Navigator.pushNamed(context, routeName);
                        },
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
            );}
            },)
          )
      ]
    ),
 );
  }
 
      void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/animationListe.dart');
}
  }