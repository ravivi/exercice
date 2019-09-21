import 'package:flutter/material.dart';
import './complete.dart';
import './new.dart';
import './connexion.dart';
import './richText.dart';


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
