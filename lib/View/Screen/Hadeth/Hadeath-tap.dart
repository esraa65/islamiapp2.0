import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii_app/Model/Hadethdataclass.dart';
import 'package:islamii_app/View/Widget/Hadethnameitem.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class HadeathTap extends StatefulWidget {
  @override
  _HadeathTapState createState() => _HadeathTapState();
}

class _HadeathTapState extends State<HadeathTap> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    if (allhadeth.isEmpty) LoadHadethFile();
    return Column(children: [
      Expanded(child: Image.asset('assets/images/hadeth_top_logo.png')),
      Container(
        height: 1,
        width: double.infinity,
        color: constants.primarycolor,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('all hadeth ', style: TextStyle(fontSize: 25,color: provider.isLightmode()?Colors.black:Colors.white) )
        ),
      Container(
        height: 1,
        width: double.infinity,
        color: constants.primarycolor,
      ),
      Expanded(
          child: Container(
              child: allhadeth.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(183, 147, 95, 1)),
                    ))
                  : ListView.separated(
                      separatorBuilder: (buildContext, index) {
                        return Container(
                          height: 1,
                          width: double.infinity,
                          color: constants.primarycolor,
                        );
                      },
                      itemBuilder: (buildContext, index) {
                        return HadethNameItem(allhadeth[index]);
                      },
                      itemCount: allhadeth.length,
                    )))
    ]);
  }

  List<HadethDataClass> allhadeth = [];

  void LoadHadethFile() async {
    for (int i = 1; i <= 50; i++) {
      String Filecontent =
          await rootBundle.loadString('assets/hadethfiles/h$i.txt');
      List<String> Hadethcontent = Filecontent.split('\n');
      String title = Hadethcontent[0];
      String Content = '';
      for (int j = 1; j < Hadethcontent.length; j++) {
        Content += Hadethcontent[j];
      }
      var h = HadethDataClass(title, Content);
      allhadeth.add(h);
    }
    setState(() {});
  }
}
