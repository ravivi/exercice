import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import './animatedBuil.dart';
import './animationIcon.dart';
import './animatedPosi.dart';
import './animationListe.dart';
import './animationOpacity.dart';
import './animationPaddi.dart';
import './indexStack.dart';
import './mediaQ.dart';
import './animatedSw.dart';
import './reorderList.dart';
import './sematic.dart';
import './aspect.dart';
import './stack.dart';
import './place.dart';
import './drag.dart';
import './rich.dart';
import './heroEx.dart';
import './animatedContainer.dart';
import './pageV.dart';
import './toolT.dart';
import './dismiss.dart';
import './backdrop.dart';
import './silv.dart';
import './slivList.dart';
import './wrapEx.dart';
import './fadeI.dart';
import './tab.dart';
import './siz.dart';
import './fitt.dart';
import './stream.dart';
import './space.dart';
import 'ali.dart';
import './opacit.dart';
import './posi.dart';
import './exp.dart';

class CompleteExercice extends StatefulWidget {
  @override
  CompleteExerciceState createState() => CompleteExerciceState();
}

class CompleteExerciceState extends State<CompleteExercice> {
  List<Widget> myPageChange = [
    PageAlign(title: 'Align',),
    AnimatedBuil(title: 'AnimatedBuilder'),
    MyHomePage(title: 'AnimatedIcon'),
    HomePage(title: 'AnimatedList'),
    AnimatedOpa(title: 'AnimatedOpacity'),
    AnimatedPadi(title: 'AnimatedPadding'),
    AnimatedPosi(title: 'AnimatedPositioned'),
    AnimatedSw(title: 'AnimatedSwitcher'),
    Page(title: 'AnimatedContainer'),
    StackEx(
      title: 'Stack',
    ),
    PagePosi(title: 'Positioned',),
    IndexStack(title: 'IndexedStack'),
    Aspect(
      title: 'AspectRatio',
    ),
    PageEx(
      title: 'PageView',
    ),
    Drag(title: 'Draggable'),
    HeroEx(title: 'Hero'),
    MediaQ(
      title: 'MediaQuery',
    ),
    Place(title: 'Placeholder'),
    ReorderList(
      title: 'ReorderableListView',
    ),
    Rich(title: 'RichText'),
    SematiEx(
      title: 'Sementics',
    ),
    PageAbord(
      title: 'ToolTip',
    ),
    PageDismis(
      title: 'Dismissible',
    ),
    PageBack(
      title: 'BackDropFilter',
    ),
    PageSilv(
      title: 'SliverAppBar',
    ),
    PageSilvList(
      title: 'SilverList',
    ),
    PageWrap(
      title: 'Wrap',
    ),
    PageFadI(
      title: 'FadeInImage',
    ),
    PageTab(title: 'Table',),
    PageSiz(title: 'SizeBox',),
    PageFit(title: 'FittedBox',),
    PageStream(title: 'StreamBuilder',),
    PageSapce(title: 'Spacer'),
    PageOpa(title: 'Opacity',),
    PageExp(title: 'Expanded',),
  ];
  List<String> myWidgetList = [
    'Align',
    'AnimatedBuilder',
    'AnimatedIcon',
    'AnimatedList',
    'AnimatedOpacity',
    'AnimatedPadding',
    'AnimatedPositioned',
    'AnimatedSwitcher',
    'AnimatedContainer',
    'Stack',
    'Positioned',
    'IndexedStack',
    'AspectRatio',
    'PageView',
    'Draggable',
    // 'InheritedWidget',
    // 'LimitedBox',
    'Hero',
    'MediaQuery',
    'Placeholder',
    'ReorderableListView',
    'RichText',
    'Semantics',
    'Tooltip',
    'Dismissible',
    'BackDropFilter',
    'SliverAppBar',
    'SliverList & SliverGrid',
    'Wrap',
    'FadeInImage',
    'Table',
    'SizeBox',
    'FittedBox',
    'StreamBuilder',
    'Spacer',
    'Opacity',
    'Expanded',
  ];
  List<String> myClasses = [
    'home',
  ];
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Exercice complet', style: TextStyle( fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
            height: 5,
            child: GestureDetector(
              onTap: launchUrl3,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/nan.jpg'),
              ),
            ),
          ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 10),
            height: 5,
            child: GestureDetector(
              onTap: showModalSheet,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/auteur.jpg'),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
        child: Icon(Icons.code),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        //backgroundColor: Colors.grey,
        selectedItemColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Accueil')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
              ),
              title: Text('Favoris')),
        ],
        //currentIndex: _pageindex,
        type: BottomNavigationBarType.fixed,
        //onTap: onItemTapped,
      ),
      backgroundColor: Colors.grey,
      body: ListView.builder(
        //   padding: EdgeInsets.all(16),
        itemCount: myWidgetList.length,
        itemBuilder: (context, i) {
          return Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: <Widget>[
              // Positioned(
              //   top: 19,
              //   left: 40,
              //   child:
              Container(
                  margin: EdgeInsets.only(right: 20, left: 30),
                  width: 400,
                  height: 70,
                  color: Colors.white,
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 60),
                        child: Text(
                          myWidgetList[i],
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Spacer(
                        flex: 1,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          toNew(myPageChange[i]);
                        },
                      ),
                      // IconButton(
                      //   icon: Icon(
                      //     Icons.info_outline,
                      //     color: Colors.grey,
                      //   ),
                      //   onPressed: () {
                      //     toNew(myPageChange[i]);
                      //   },
                      // ),
                    ],
                  )),
              //),
              // Positioned(
              //   left: 10,
              //   top: 15,
              //   child:
              Container(
                  decoration: BoxDecoration(
                      //border: Border.all(color: Colors.blueGrey)
                      ),
                  margin: EdgeInsets.only(
                    right: 280,
                  ),
                  height: 82,
                  width: 82,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    elevation: 20,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/flutter.png'),
                    ),
                  )),
              //SizedBox(height: 60,)
              //),
            ],
          );
          //     return Card(
          //       child: ListTile(
          //         leading:
          //           FlutterLogo(),
          //           //backgroundColor: Colors.blueGrey,

          //         title: Text(myWidgetList[i]),
          //         trailing: IconButton(
          //           icon:Icon(Icons.visibility),
          //           onPressed: (){
          //             toNew(myPageChange[i]);
          //           },
          //           ),
          //       ),
          //     );
        },
      ),
    );
  }

  void showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 200,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/auteur.jpg'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Octave N'dry",
                    style: TextStyle(fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
              ],
            ),
            GestureDetector(
                  onTap: launchUrl,
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
                    child: Chip(
                      avatar: CircleAvatar(
                        backgroundImage: AssetImage('images/git.png'),
                        backgroundColor: Colors.white,
                      ),
                      label: Text(
                        'Github',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shadowColor: Colors.grey[40],
                      padding: EdgeInsets.all(4),
                    ),
                  ),
                ),
                
            GestureDetector(
                  onTap: (){
                    launchUrl2('jeremiedry@gmail.com', "Question sur Exercice complet", 'Bonjour Octave');
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
                    child: Chip(
                      avatar: CircleAvatar(
                        backgroundImage: AssetImage('images/gmail.png'),
                        backgroundColor: Colors.white,
                      ),
                      label: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.red,
                      elevation: 4,
                      shadowColor: Colors.grey[40],
                      padding: EdgeInsets.all(4),
                    ),
                  ),
                ),
              ],
            ),
            //padding: EdgeInsets.all(40.0),
          );
        });
  }
//   void showAlertDialog(BuildContext context) {
  
//   Widget cancelButton = FlatButton(
//     child: Text("Ok"),
//     onPressed:  () {
//       Navigator.of(context).pop(); // dismiss dialog
   
//     },
//   );
//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text(" A retenir"),
//     content: Text(""),
//     actions: [
//       cancelButton,
//     ],
//   );
//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }

  void launchUrl() {
    launch('https://github.com/ravivi/exercice');
  }
  void launchUrl3() {
    launch('https://cursus.nan.ci/');
  }
   void launchUrl2(String toMailId, String subject, String body) {
     var url = 'mailto:$toMailId?subject=$subject&body=$body';
    launch(url);
  }

  void toNew(Widget wid) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return wid;
    }));
  }
}
