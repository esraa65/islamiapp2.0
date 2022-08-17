import 'package:flutter/material.dart';
import 'package:islamii_app/View/Screen/Hadeth/HadethDetailsScreen.dart';
import 'package:islamii_app/View/Screen/homepage.dart';
import 'View/Screen/quran/SuraDetailsScreen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: MythemeData.primarycolor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.brown),
        ),
    ),

      debugShowCheckedModeBanner: false,
      routes: {
       Homepage.Routename:(buildContext)=>Homepage(),
        SuraDetailsScreen.Routename:(buildContext)=>SuraDetailsScreen(),
        HadethDetailsScreen.Routename:(buildContext)=>HadethDetailsScreen()
      },
      initialRoute: Homepage.Routename,


    );
  }
}


