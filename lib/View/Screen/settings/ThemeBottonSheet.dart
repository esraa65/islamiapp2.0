import 'package:flutter/material.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';
import 'package:provider/provider.dart';

class ThemeBottonSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        InkWell(onTap: (){
          provider.ChangeTheme(ThemeMode.light);
        },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: provider.isLightmode()?getSelectedWidget(context, 'Light'):getUnselectedWidget('Light'),
          ),
        ),
        InkWell(onTap: (){
          provider.ChangeTheme(ThemeMode.dark);
        },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child:  !provider.isLightmode()?getSelectedWidget(context, 'Dark'):getUnselectedWidget('Dark'),
          ),
        ),
      ],
    );
  }
  Widget getSelectedWidget(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style:
              TextStyle(fontSize: 20, color: Theme.of(context).primaryColor)),
          Icon(Icons.check, color: Theme.of(context).primaryColor)
        ],
      ),
    );
  }

  Widget getUnselectedWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
