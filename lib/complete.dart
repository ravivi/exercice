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



class CompleteExercice extends StatefulWidget {
  @override
  CompleteExerciceState createState() => CompleteExerciceState();
}

class CompleteExerciceState extends State<CompleteExercice> {
  List<Widget> myPageChange=[
    MyHomePage(title:'AnimatedIcon'),
    HomePage(title: 'AnimatedList'),
    AnimatedOpa(title : 'AnimatedOpacity'),
    AnimatedPadi(title : 'AnimatedPadding'),
    AnimatedPosi(title: 'AnimatedPositioned'),
    AnimatedSw(title: 'AnimatedSwitcher'),
    StackEx(title: 'Stack',),
    IndexStack(title: 'IndexedStack'),
    Aspect(title: 'AspectRatio',),
    MediaQ(title: 'MediaQuery',),
    ReorderList(title: 'ReorderableListView',),
    SematiEx(title: 'Sementics',)


  ];
  List<String>myWidgetList =[
    'AnimatedIcon',
    'AnimatedList',
    'AnimatedOpacity',
    'AnimatedPadding',
    'AnimatedPositioned',
    'AnimatedSwitcher',
    'Stack',
     'IndexedStack',
     'AspectRatio',
    // 'ConstrainedBox',
     //'Draggable',
    // 'InheritedWidget',
    // 'LimitedBox',
     'MediaQuery',
    // 'Placeholder',
     'ReorderableListView',
    // 'RichText',
     'Semantics',
    // 'Spacer',

  ];
  List<String> myClasses=[
    'home',

  ];
  static const routeName ='/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercice complet'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: myWidgetList.length,
        itemBuilder: (context, i){
          return Card(
            child: ListTile(
              leading: 
                FlutterLogo(),
                //backgroundColor: Colors.blueGrey,
              
              title: Text(myWidgetList[i]),
              trailing: IconButton(
                icon:Icon(Icons.visibility),
                onPressed: (){
                  toNew(myPageChange[i]);
                },
                ),
            ),
          );
        },
      ),
    );
   
  }
   void toNew(Widget wid){
      Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
        return wid;
      } ));
    }
}