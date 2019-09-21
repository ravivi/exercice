import 'package:flutter/material.dart';

class PageSilv extends StatefulWidget{
  final String title;
  PageSilv({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState(){
    return PageSilvState();
  }

}
class PageSilvState extends State<PageSilv> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset(
                    "images/xamarin.png",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Center(
          child: Text("Sample Text"),
        ),
      ),
    );

  }
}





// return Scaffold(
    //   body: NestedScrollView(
    //     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    //       return <Widget>[
    //         SliverAppBar(
    //           expandedHeight: 200.0,
    //           floating: false,
    //           pinned: true,
    //           flexibleSpace: FlexibleSpaceBar(
    //               centerTitle: true,
    //               background: Image.asset(
    //                 'images/villa.jpg',
    //                 fit: BoxFit.cover,
    //               )),
    //         ),
    //       ];
    //     },
    //     body: Column(children: <Widget>[
    //       Container(
    //         padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //         alignment: Alignment.topLeft,
    //         child: Text('Duplex',
    //             style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //               fontSize: 18,
    //             )),
    //       ),
    //       Container(
    //         padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //         alignment: Alignment.topLeft,
    //         child: Text('5 pièces', style: TextStyle(color: Colors.grey)),
    //       ),
    //       Container(
    //         padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //         alignment: Alignment.topLeft,
    //         child: Text(
    //           'Un etage avec garage et piscine ...',
    //           style: TextStyle(color: Colors.grey),
    //         ),
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Column(
    //             children: <Widget>[
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child: Text('Fondation',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18,
    //                     )),
    //               ),
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child: Text('2000 briques',
    //                     style: TextStyle(color: Colors.grey)),
    //               ),
    //             ],
    //           ),
    //           Column(
    //             children: <Widget>[
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child: Text('Montage',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18,
    //                     )),
    //               ),
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child: Text('9500 briques',
    //                     style: TextStyle(color: Colors.grey)),
    //               ),
    //             ],
    //           ),
    //           Column(
    //             children: <Widget>[
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child: Text('Ciment',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18,
    //                     )),
    //               ),
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child:
    //                     Text('12 tonnes', style: TextStyle(color: Colors.grey)),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Column(
    //             children: <Widget>[
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child: Text('Beton',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18,
    //                     )),
    //               ),
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child:
    //                     Text('10 tonnes', style: TextStyle(color: Colors.grey)),
    //               ),
    //             ],
    //           ),
    //           Column(
    //             children: <Widget>[
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child: Text('Ciment',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18,
    //                     )),
    //               ),
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child: Text('9500 briques',
    //                     style: TextStyle(color: Colors.grey)),
    //               ),
    //             ],
    //           ),
    //           Column(
    //             children: <Widget>[
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child: Text('Ciment',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18,
    //                     )),
    //               ),
    //               Container(
    //                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //                 alignment: Alignment.topLeft,
    //                 child:
    //                     Text('12 tonnes', style: TextStyle(color: Colors.grey)),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //       Column(
    //         children: <Widget>[
    //           Container(
    //             padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //             alignment: Alignment.topLeft,
    //             child: Text('Coût de realisation',
    //                 style: TextStyle(
    //                   color: Colors.grey,
    //                 )),
    //           ),
    //           Container(
    //             padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    //             alignment: Alignment.topLeft,
    //             child: Text('50 000 000 FCFA (environ)',
    //                 style: TextStyle(
    //                   color: Colors.black87,
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 18,
    //                 )),
    //           ),
    //           Container(
    //             height: 59,
    //             width: 300,
    //             child: RaisedButton(
    //               child: Text(
    //                 "Voir une autre maison",
    //                 textAlign: TextAlign.left,
    //               ),
    //               onPressed: () {
    //                 //Navigator.pushNamed(context, routeName);
    //               },
    //               color: Colors.white70,
    //               shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(10)),
    //             ),
    //           ),
    //          Container(
    //           margin: EdgeInsets.symmetric(vertical: 10),
    //           width: double.infinity,
    //           height: 150,
    //           child: Card(
    //             color: Colors.white70,
    //             shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.only(
    //                     topLeft: Radius.circular(20),
    //                     topRight: Radius.circular(20),
    //                 ),),
    //             elevation: 10,
    //             child: Column(
    //               children: <Widget>[
    //                 Container(
    //                   margin: EdgeInsets.symmetric(vertical: 40),
    //                   height: 59,
    //                   width: 300,
    //                   child: RaisedButton(
    //                     child: Text("CONNECTEZ VOUS"),
    //                     onPressed: () {
    //                      // Navigator.pushNamed(context, routeName);
    //                     },
    //                     color: Colors.red,
    //                     shape: RoundedRectangleBorder(
    //                         borderRadius: BorderRadius.circular(10)),
    //                   ),
    //                 ),
                    
    //               ],
    //             ),
    //           ),
    //         ),
              
    //         ],
    //       ),
    //     ]),
    //   ),
    // );