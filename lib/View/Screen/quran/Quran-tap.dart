import 'package:flutter/material.dart';
import 'package:islamii_app/Model/SuraNames.dart';
import 'package:islamii_app/View/Widget/suranameitem.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';

import '../../../constants.dart';
import '../../../main.dart';
import 'package:provider/provider.dart';


class QuranTap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/quran-top-logo.png',
            )),
        Container(
          height: 1,width: double.infinity,color: constants.primarycolor,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('sura name',style: TextStyle(fontSize: 25,color: provider.isLightmode()?Colors.black:Colors.white)),
        ),
        Container(
          height: 1,width: double.infinity,color: constants.primarycolor,),
        Expanded(
          flex: 3,
          child: ListView.separated(separatorBuilder: (buildContext,index){
            return Container(
            height: 1,width: double.infinity,color: constants.primarycolor,);
  },
            itemBuilder: (buildContext, index) {
              return SuraNameItem(SuraNames[index], index);
            },
            itemCount: SuraNames.length,
          ),
        )
      ],
    );
  }
}

