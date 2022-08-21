import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii_app/View/Screen/settings/Langaugesheet.dart';
import 'package:islamii_app/View/Screen/settings/ThemeBottonSheet.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Langauge',
            style: TextStyle(fontSize: 25),
          ),
          InkWell(
            onTap: () {
              ShowLanguageSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(vertical: 22),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.GetSelectedLanguagetext()),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                  )
                ],
              ),
            ),
          ),
          Text(
            'Theme',
            style: TextStyle(fontSize: 25),
          ),
          InkWell(
            onTap: () {
              ShowThemeSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(vertical: 22),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'light',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLanguageSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LangaugeBottonSheet();
        });
  }

  void ShowThemeSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottonSheet();
        });
  }
}
