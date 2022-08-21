import 'package:flutter/material.dart';
import 'package:islamii_app/Model/Tabs_data.dart';
import '../../constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              title: Text(AppLocalizations.of(context)!.app_title,
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
                      label: AppLocalizations.of(context)!.quran,
                      icon: Image.asset(
                        'assets/images/quran.png',
                        width: 48,
                      )),
                  BottomNavigationBarItem(
                      label: AppLocalizations.of(context)!.hadeth,
                      icon: Image.asset(
                        'assets/images/quran-quran-book.png',
                        width: 48,
                      )),
                  BottomNavigationBarItem(
                      label: AppLocalizations.of(context)!.tasbeh,
                      icon: Image.asset(
                        'assets/images/sebha-icon.png',
                        width: 48,
                      )),
                  BottomNavigationBarItem(
                      label: AppLocalizations.of(context)!.radio,
                      icon: Image.asset(
                        'assets/images/radio-icon.png',
                        width: 48,
                      )),
                  BottomNavigationBarItem(
                      label: AppLocalizations.of(context)!.settings,
                      icon: Icon(Icons.settings, size: 35)),
                ],
              ),
            ),
            body: Container(child: Tabs[Currentpage]))
      ],
    );
  }


}
