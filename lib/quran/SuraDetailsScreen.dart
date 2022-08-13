
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class SuraDetailsScreen extends StatefulWidget {
static const String Routename='SuraDetails';

  @override
  _SuraDetailsScreenState createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    LoadSuraDetailsFile(args.SuraIndex);
    return Stack(
        children: [
        Image.asset('assets/images/main-background.png',
        width: double.infinity, height: double.infinity, fit: BoxFit.fill),
    Scaffold(
    appBar: AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text('${args.SuraName}',
    style: TextStyle(color: MythemeData.appbarcolor)
    ),
    backgroundColor: Colors.transparent,
    ),

backgroundColor: Colors.transparent,
      body:Container(
          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(60),color:Colors.white),
        child: verses.isEmpty?Center(child:
        CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(183, 147, 95, 1)),))
            :ListView.builder(itemBuilder: (buildContext,index){
              return Container(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(verses[index]+'${index+1}',
                  style: TextStyle(fontSize: 23),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ));
        },itemCount: verses.length,
        )
      )
    )
        ]);
  }

void LoadSuraDetailsFile(int index)async{
       String FileContent =await rootBundle.loadString('assets/quranfiles/${index+1}.txt');
      List<String>ayat= FileContent.split('\n');
      this.verses=ayat;
      setState(() {

      });
}
}
class SuraDetailsArgs{
  String SuraName;
  int SuraIndex;
  SuraDetailsArgs(this.SuraName,this.SuraIndex);
}