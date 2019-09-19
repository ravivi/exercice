import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  final String title;
HomePage({Key key, this.title}): super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
      }
    
    }
    
    class HomePageState extends State<HomePage>{
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
            onPressed: (){},
          )
        ],
      ),
      body: AnimatedList(
        key: listKey,
        initialItemCount: myTab.length,
        itemBuilder: (context, index, animation){
          return myWid(myTab[index], animation,index);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        onPressed: (){
          insertElement();
        },
      ),

    );
  }
  Widget myWid(String item, Animation animation, int index){
    
    return SizeTransition(
      sizeFactor: animation,
      child: Dismissible(
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
        key: Key(item),
        child: Card(
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            child: Image.asset('images/imac.jpg', fit: BoxFit.fill,),
          ) ,
          title: Text(item),
          trailing: GestureDetector(
            child: Icon(Icons.delete, color: Colors.red,),
            onTap: (){
              removeElement(index);
            },
          ),
        ),
      ),
      ) 
    );
  }
    
  void insertElement(){
    int newIndex;
    if(myTab.length>0){
      newIndex =myTab.length -4 ;
    }else{
      newIndex=0;
    }
    String item = myNewTab[newIndex];
    myTab.insert(newIndex, item);
    listKey.currentState.insertItem(newIndex);
  }
  void removeElement(int removeAt){
    int removeIndex = removeAt;
    String removedItem = myTab.removeAt(removeIndex);
    AnimatedListRemovedItemBuilder builder =(context, animation){
      return myWid(removedItem, animation, removeAt);
    };
    listKey.currentState.removeItem(removeIndex, builder);
  }
      void launchUrl(){
  launch('https://github.com/ravivi/exercice/blob/master/lib/animationOpacity.dart');
}
  }