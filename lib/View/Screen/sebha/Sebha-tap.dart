import 'package:flutter/material.dart';
import 'package:islamii_app/constants.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';
import 'package:provider/provider.dart';
class SebhaTap extends StatefulWidget {
  @override
  _SebhaTapState createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int counter = 0;
  List<String> tasbeh = ["الله اكبر", "الحمداالله", 'سبحان الله'];

  int index = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
      width: double.infinity,
      child: Column(
        children: [
        Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
              margin: EdgeInsets.only(
                  left: MediaQuery
                      .of(context)
                      .size
                      .height * .09),
              child: Image.asset('assets/images/head of seb7a.png')),
          InkWell(
            onTap: () {
              onSebhapress();
            },
            child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery
                        .of(context)
                        .size
                        .height * .1),
                child: Transform.rotate(
                    angle: angle,
                    child: Image.asset('assets/images/body of seb7a.png'))),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'عدد التسبيحات',
          style: TextStyle(fontSize: 28,color: provider.isLightmode()?Colors.black:Colors.white),
        ),
      ),
      Container(
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              color: Color(0xffcca66c),
              borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.all(12),
          child: Text('$counter', style: TextStyle(fontSize: 18))),
      Container(
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.all(12),
          child: Text('${tasbeh[index]}',
              style: TextStyle(fontSize: 18, color: Colors.white)))
      , InkWell(
      onTap: () {
        counter = 0;
        setState(() {});
      },
      child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: provider.isLightmode()
                ? constants.primarycolor
                : constants.btmnavdark,
          ),
          child: Center(
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: 24,
                  color: provider.isLightmode() ? Colors.black : Colors.white,
                ),
              ))),
          )],
    ),
    );
  }

  void onSebhapress() {
    counter++;
    if (counter % 33 == 0) {
      if (index == tasbeh.length-1) {
        index = -1;
      }
      index++;
    }
    setState(() {
      angle += 20;
    });
  }
}
