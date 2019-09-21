import 'package:flutter/material.dart';

class PageEx extends StatefulWidget{
  final String title;
  PageEx({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState(){
    return PageExState();
  }

}
class PageExState extends State<PageEx> {
  static final GlobalKey<ScaffoldState> scafkey = GlobalKey<ScaffoldState>();
  var scrollDirection = Axis.horizontal;
  var actionIcon = Icons.swap_horiz;
  final controller = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafkey,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
         IconButton(icon: Icon(actionIcon),
             onPressed: (){
           setState(() {
             scrollDirection == Axis.horizontal?scrollDirection=Axis.vertical:scrollDirection=Axis.horizontal;
              actionIcon == Icons.swap_horiz? actionIcon = Icons.swap_vert:actionIcon = Icons.swap_horiz;
           });
           controller.position.applyViewportDimension(scrollDirection == Axis.horizontal? MediaQuery.of(context).size.height:MediaQuery.of(context).size.width);
             })
        ],

      ),
      body:PageView(
        controller: controller,
        scrollDirection: scrollDirection,
        pageSnapping: true,
        children: <Widget>[

          Container(



            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(20),
              child:Container(
                  color: Colors.black,
                  child: Opacity(opacity: 0.7,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 100,
                      ),
                      child:Container(
                        child:Image.asset('images/flutter.png', fit: BoxFit.fill,),) ,
                      )
                    )
              ),


            ),

          ),
          Container(



            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(20),
              child:Container(
                  color: Colors.black,
                  child: Opacity(opacity: 0.7,
                    child: Image.asset('images/react.png', fit: BoxFit.fill,),)
              ),


            ),

          ),
          Container(



            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(20),
              child:Container(
                  color: Colors.black,
                  child: Opacity(opacity: 0.7,
                    child: Image.asset('images/ionic.png', fit: BoxFit.fill,),)
              ),


            ),

          ),
          Container(



            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(20),
                child:Container(
                  color: Colors.black,
                    child: Opacity(opacity: 0.7,
                      child: Image.asset('images/angular.png', fit: BoxFit.fill,),)
                ),


            ),

          ),
          Container(



            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(20),
              child:Container(
                  color: Colors.black,
                  child: Opacity(opacity: 0.7,
                    child: Image.asset('images/xamarin.png', fit: BoxFit.fill,),)
              ),


            ),

          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: null, //_handleOnPressed,
        child: Icon(Icons.add),),
      bottomNavigationBar: BottomAppBar(
        //color: randomGenerator(),

        child: Container(
          height: 50.0,

        ),
      ),

    );

  }
}