
import 'package:flutter/material.dart';

class SuraNameItem extends StatelessWidget {
 String suraName;
 int suraindex;
 SuraNameItem(this.suraName,this.suraindex);
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: Text('${suraName}',style: TextStyle(fontSize: 25),),
    ),
    ],
    );
  }
}
