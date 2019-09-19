import 'package:flutter/material.dart';
import 'dart:math';

class LimitBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LimitBoxState();
  }
}

bool isSuccess = false;
bool isSuccess2 = false;
bool isSuccess3 = false;
final List<Color> circleColors = [
  Colors.purple,
  Colors.white,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red
];

Color randomGenerator() {
  return circleColors[new Random().nextInt(7)];
}

// Widget Mylist = GridView.builder(
//     itemCount: 7,
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
//     itemBuilder: (BuildContext context, int index) {
//       return Column(
//         children: <Widget>[
//           Draggable(
//         data: 5,
//         child: Container(
//           width: 20,
//           height: 20,
//           color: circleColors[index],
//         ),
//         feedback: Container(
//           width: 50,
//           height: 50,
//           color: circleColors[index],
//         ),
//       ),
//        Stack(
//                   alignment: Alignment.center,
//                   children: <Widget>[
//                     Container(
//                       child: DragTarget<Color>(
//                         builder:
//                             (context, List<Color> candidateData, rejectedData) {
//                           if (isSuccess == true) {
//                             return Container(
//                               width: 300,
//                               height: 300,
//                               color: circleColors[index],
//                             );
//                           } else {
//                             return Container();
//                           }
//                         },
//                         onWillAccept: (data) {
//                           if (data == circleColors[index]) {
//                             return true;
//                           } else {
//                             return false;
//                           }
//                         },
//                         onAccept: (data) {
//                           setState(() {
//                             isSuccess = true;
//                           });
//                         },
//                       ),
//                     ),
//                   ]
//        ),
//       ],
//     );
//     }
// );

        

     

class LimitBoxState extends State<LimitBox> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        key: scaffoldKey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 80,
                  childAspectRatio: 1 / 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                ),
                children: <Widget>[
                  Draggable<Color>(
                    data: Colors.orange,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 20,
                        maxWidth: 20,
                      ),
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                    feedback: Container(
                      width: 50,
                      height: 50,
                      color: Colors.orange,
                    ),
                  ),    Draggable<Color>(
                    data: Colors.white,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 20,
                        maxWidth: 20,
                      ),
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    feedback: Container(
                      width: 50,
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  Draggable<Color>(
                    data: Colors.green,
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.green,
                    ),
                    feedback: Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            Flexible(
                flex: 2,
                fit: FlexFit.loose,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      child: DragTarget<Color>(
                        builder:
                            (context, List<Color> candidateData, rejectedData) {
                          if (isSuccess == true) {
                            return Container(
                              width: 300,
                              height: 300,
                              color: Colors.orange,
                            );
                          } else {
                            return Container();
                          }
                        },
                        onWillAccept: (data) {
                          if (data == Colors.orange) {
                            return true;
                          } else {
                            return false;
                          }
                        },
                        onAccept: (data) {
                          setState(() {
                            isSuccess = true;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      child: DragTarget<Color>(
                        builder:
                            (context, List<Color> candidateData, rejectedData) {
                          if (isSuccess2 == true) {
                            return Container(
                              width: 200,
                              height: 200,
                              color: Colors.white,
                            );
                          } else {
                            return Container();
                          }
                        },
                        onWillAccept: (data) {
                          if (data == Colors.white) {
                            return true;
                          } else {
                            return false;
                          }
                        },
                        onAccept: (data) {
                          setState(() {
                            isSuccess2 = true;
                          });
                        },
                      ),

                    ),
                    Positioned(
                      child: DragTarget<Color>(
                        builder:
                            (context, List<Color> candidateData, rejectedData) {
                          if (isSuccess3 == true) {
                            return Container(
                              width: 100,
                              height: 100,
                              color: Colors.green,
                            );
                          } else {
                            return Container();
                          }
                        },
                        onWillAccept: (data) {
                          if (data == Colors.green) {
                            return true;
                          } else {
                            return false;
                          }
                        },
                        onAccept: (data) {
                          setState(() {
                            isSuccess3 = true;
                          });
                        },
                      ),

                    ),
                  ],
                )),
        
              
              RaisedButton(
                child: Text('Click'),
                onPressed: () {
                  setState(() {
                      scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Côte d'ivoire")));
                      
                  });
                },
                color: Colors.indigo,
              ),
          
          ],
        ));
  }
}
