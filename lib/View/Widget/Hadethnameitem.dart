import 'package:flutter/material.dart';
import 'package:islamii_app/Model/Hadethdataclass.dart';
import 'package:islamii_app/View/Screen/Hadeth/HadethDetailsScreen.dart';

class HadethNameItem extends StatelessWidget {
  HadethDataClass hadeth;
  HadethNameItem(this.hadeth);
  @override
  Widget build(BuildContext context) {
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
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
