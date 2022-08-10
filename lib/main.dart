import 'package:flutter/material.dart';
import 'package:islamii_app/homepage.dart';

void main() {
  runApp(MyApp());
}
class MythemeData{
  static final primarycolor= Color.fromRGBO(183, 147, 95, 1.0);
  static final selectediconcolor= Color.fromRGBO(7, 7, 7, 1.0);
  static final unselectediconcolor= Color.fromRGBO(255, 255, 255, 1.0);
  static final appbarcolor= Color.fromRGBO(0, 0, 0, 1.0);
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: MythemeData.primarycolor),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
       Homepage.Routename:(buildContext)=>Homepage()
      },
      initialRoute: Homepage.Routename,


    );
  }
}

