
import 'package:flutter/material.dart';
import 'package:islamii_app/quran/SuraDetailsScreen.dart';

class SuraNameItem extends StatelessWidget {
 String suraName;
 int suraindex;
 SuraNameItem(this.suraName,this.suraindex);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.Routename,
            arguments:SuraDetailsArgs(suraName,suraindex)
        );
      },
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
      child: Text('${suraName}',style: TextStyle(fontSize: 25),),
      ),
      ],
      ),
    );
  }
}
