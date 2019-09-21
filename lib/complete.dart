import 'package:flutter/material.dart';
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
import './abord.dart';
import './dismiss.dart';
import './backdrop.dart';
import './silv.dart';
import './slivList.dart';


class CompleteExercice extends StatefulWidget {
  @override
  CompleteExerciceState createState() => CompleteExerciceState();
}

class CompleteExerciceState extends State<CompleteExercice> {
  List<Widget> myPageChange = [
    MyHomePage(title: 'AnimatedIcon'),
    HomePage(title: 'AnimatedList'),
    AnimatedOpa(title: 'AnimatedOpacity'),
    AnimatedPadi(title: 'AnimatedPadding'),
    AnimatedPosi(title: 'AnimatedPositioned'),
    AnimatedSw(title: 'AnimatedSwitcher'),
    Page(title:'AnimatedContainer'),
    StackEx(
      title: 'Stack',
    ),
    IndexStack(title: 'IndexedStack'),
    Aspect(
      title: 'AspectRatio',
    ),
    PageEx(title: 'PageView',),
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
    PageAbord(title: 'AbsordPointer',),
    PageDismis(title: 'Dismissible',),
    PageBack(title: 'BackDropFilter',),
    PageSilv(title: 'SliverAppBar',),
    PageSilvList(title: 'SilverList',),


  ];
  List<String> myWidgetList = [
    'AnimatedIcon',
    'AnimatedList',
    'AnimatedOpacity',
    'AnimatedPadding',
    'AnimatedPositioned',
    'AnimatedSwitcher',
    'AnimatedContainer',
    'Stack',
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
    'AbsordPointer',
    'Dismissible',
    'BackDropFilter',
    'SliverAppBar',
    'SliverList',

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
        title: Text('Exercice complet'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(12),
            child:   Icon(Icons.more_vert),
          ),
        
        ],
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          onPressed: (){},
          child: Icon(Icons.code),),
     bottomNavigationBar: BottomNavigationBar(
       elevation: 0,
           //backgroundColor: Colors.grey,
           selectedItemColor: Colors.blueAccent,
           items: <BottomNavigationBarItem>[
             BottomNavigationBarItem(icon: Icon(Icons.home,),title: Text('Accueil') ),
        
             BottomNavigationBarItem(icon: Icon(Icons.star_border,), title: Text('Favoris') ),
           
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
                  margin: EdgeInsets.only(right: 20,left: 30),
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
                          color: Colors.black,
                        ),
                        onPressed: () {
                          toNew(myPageChange[i]);
                        },
                      ),
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

  void toNew(Widget wid) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return wid;
    }));
  }
}
