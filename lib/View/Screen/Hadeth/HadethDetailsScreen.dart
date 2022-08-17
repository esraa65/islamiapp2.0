import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii_app/Model/Hadethdataclass.dart';

import '../../../constants.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String Routename = 'Hadethdetails';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethDataClass;
    return Stack(children: [
      Image.asset('assets/images/main-background.png',
          width: double.infinity, height: double.infinity, fit: BoxFit.fill),
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(args.title,
              style: TextStyle(color: MythemeData.appbarcolor)),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(55),
              color: Colors.white),
          padding: EdgeInsets.all(39),
          child: SingleChildScrollView(
            child: Text(
              args.Content,
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}
