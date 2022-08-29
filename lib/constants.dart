import 'dart:ui';

import 'package:flutter/material.dart';

class constants{
  static final primarycolor= Color.fromRGBO(183, 147, 95, 1.0);
  static final selectediconcolor= Color.fromRGBO(7, 7, 7, 1.0);
  static final unselectediconcolor= Color.fromRGBO(255, 255, 255, 1.0);
  static final appbarcolor= Color.fromRGBO(0, 0, 0, 1.0);
  static final Color btmnavdark = Color.fromARGB(255, 20, 26, 46);
  static final ThemeData lighttheme=ThemeData(
       appBarTheme: AppBarTheme(
         backgroundColor: Colors.transparent,
         elevation: 0,
         centerTitle: true,
         iconTheme: IconThemeData(color:selectediconcolor),
       ),


   );
  static final ThemeData darktheme=ThemeData(
       appBarTheme: AppBarTheme(
         backgroundColor: Colors.transparent,
         elevation: 0,
         centerTitle: true,
         iconTheme: IconThemeData(color:unselectediconcolor),
       ),

   );




}
