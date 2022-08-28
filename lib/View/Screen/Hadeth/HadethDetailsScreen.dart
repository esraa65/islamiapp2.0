import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii_app/Model/Hadethdataclass.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';

import '../../../constants.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String Routename = 'Hadethdetails';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as HadethDataClass;
    return Stack(children: [
      Image.asset(provider.isLightmode()
          ? 'assets/images/main-background.png'
          : "assets/images/bg_dark.png",
          width: double.infinity, height: double.infinity, fit: BoxFit.fill),
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(args.title,
              style: TextStyle(color:provider.isLightmode()?Colors.black:Colors.white)),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(55),
              color: provider.isLightmode()?Colors.white:constants.btmnavdark),
          padding: EdgeInsets.all(39),
          child: SingleChildScrollView(
            child: Text(
              args.Content,
              style: TextStyle(fontSize: 22,color: provider.isLightmode()?Colors.black:constants.primarycolor),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}
