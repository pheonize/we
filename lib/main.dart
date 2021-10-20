import 'package:flutter/material.dart';
import 'package:we/home_page.dart';
import 'loading_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WE',
      theme: ThemeData(
       
        //primarySwatch:Colors.white,
      ),
      home:const loadingpage(),
    );
  }
}

 
