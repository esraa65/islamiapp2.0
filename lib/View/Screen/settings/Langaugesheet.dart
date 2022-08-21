import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';
import 'package:provider/provider.dart';

class LangaugeBottonSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.ChangeLangauge('en');
            },
            child: provider.applangauge == 'en'
                ? getSelectedWidget(context, 'English')
                : getUnselectedWidget('English'),
          ),
          SizedBox(height: 8),
          InkWell(
            onTap: () {
              provider.ChangeLangauge('ar');
            },
            child: provider.applangauge == 'ar'
                ? getSelectedWidget(context, 'Arabic')
                : getUnselectedWidget('Arabic'),
          )
        ],
      ),
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
