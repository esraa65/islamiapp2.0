import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadeathTap extends StatefulWidget {
  @override
  _HadeathTapState createState() => _HadeathTapState();
}

class _HadeathTapState extends State<HadeathTap> {
  @override
  Widget build(BuildContext context) {
    if (allhadeth.isEmpty) LoadHadethFile();
    return Column(children: [
      Expanded(child: Image.asset('assets/images/hadeth_top_logo.png')),
      Expanded(
          child: Container(
              child: allhadeth.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(183, 147, 95, 1)),
                    ))
                  : ListView.builder(
                      itemBuilder: (buildContext, index) {
                        return Text(allhadeth[index].title);
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

class HadethDataClass {
  String title;
  String Content;

  HadethDataClass(this.title, this.Content);
}
