import 'package:flutter/material.dart';
import 'Hadeth/Hadeath-tap.dart';
import 'quran/Quran-tap.dart';
import 'Radio-tap.dart';
import 'sebha/Sebha-tap.dart';
import '../../constants.dart';

class Homepage extends StatefulWidget {
  static const String Routename = 'home';

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int Currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main-background.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text('Islami',
                  style: TextStyle(color: MythemeData.appbarcolor)),
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,
            bottomNavigationBar: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: MythemeData.primarycolor),
              child: BottomNavigationBar(
                onTap: (index) {
                  Currentpage = index;
                  setState(() {});
                },
                currentIndex: Currentpage,
                selectedItemColor: MythemeData.selectediconcolor,
                unselectedItemColor: MythemeData.unselectediconcolor,
                backgroundColor: MythemeData.primarycolor,
                items: [
                  BottomNavigationBarItem(
                      label: 'quran',
                      icon: Image.asset(
                        'assets/images/quran.png',
                        width: 48,
                      )),
                  BottomNavigationBarItem(
                      label: 'hadeth',
                      icon: Image.asset(
                        'assets/images/quran-quran-book.png',
                        width: 48,
                      )),
                  BottomNavigationBarItem(
                      label: 'sebha',
                      icon: Image.asset(
                        'assets/images/sebha-icon.png',
                        width: 48,
                      )),
                  BottomNavigationBarItem(
                      label: 'radio',
                      icon: Image.asset(
                        'assets/images/radio-icon.png',
                        width: 48,
                      )),
                ],
              ),
            ),
            body: Container(child: GetCurrentPage()))
      ],
    );
  }

  Widget GetCurrentPage() {
    if (Currentpage == 0) {
      return QuranTap();
    } else if (Currentpage == 1) {
      return HadeathTap();
    } else if (Currentpage == 2) {
      return SebhaTap();
    } else
      return RadioTap();
  }
}
