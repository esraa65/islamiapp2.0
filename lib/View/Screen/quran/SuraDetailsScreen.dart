import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii_app/Model/SuraData.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../main.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String Routename = 'SuraDetails';

  @override
  _SuraDetailsScreenState createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    LoadSuraDetailsFile(args.SuraIndex);
    return Stack(children: [
      Image.asset(
          provider.isLightmode()
              ? 'assets/images/main-background.png'
              : "assets/images/bg_dark.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill),
      Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text('${args.SuraName}',
                style: TextStyle(fontSize: 25,color: provider.isLightmode()?Colors.black:Colors.white)),),
            backgroundColor: Colors.transparent,
          body: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(60),
                  color: provider.isLightmode()?Colors.white:constants.btmnavdark),
              child: verses.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(183, 147, 95, 1)),
                    ))
                  : ListView.builder(
                      itemBuilder: (buildContext, index) {
                        return Container(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            verses[index] + '${index + 1}',
                            style: TextStyle(fontSize: 23,color: provider.isLightmode()?Colors.black:constants.primarycolor),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                          ),
                        ));
                      },
                      itemCount: verses.length,
                    )))
    ]);
  }

  void LoadSuraDetailsFile(int index) async {
    String FileContent =
        await rootBundle.loadString('assets/quranfiles/${index + 1}.txt');
    List<String> ayat = FileContent.split('\n');
    this.verses = ayat;
    setState(() {});
  }
}
