import 'package:flutter/material.dart';
import 'package:islamii_app/Model/Hadethdataclass.dart';
import 'package:islamii_app/View/Screen/Hadeth/HadethDetailsScreen.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';
import 'package:provider/provider.dart';

class HadethNameItem extends StatelessWidget {
  HadethDataClass hadeth;
  HadethNameItem(this.hadeth);
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.Routename
            ,arguments:hadeth
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${hadeth.title}',
              style: TextStyle(fontSize: 25,color: provider.isLightmode()?Colors.black:Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
