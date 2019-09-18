import 'package:flutter/material.dart';
import './detail.dart';
import './home.dart';
import './animationIcon.dart';
import './animationListe.dart';
import './limitBox.dart';
import './complete.dart';
import './animationOpacity.dart';
import './animationPaddi.dart';
import './animatedPosi.dart';
import './indexStack.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: CompleteExercice(),

      );




  }
}
