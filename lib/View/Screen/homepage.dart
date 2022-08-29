import 'package:flutter/material.dart';
import 'package:islamii_app/Model/Tabs_data.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';
import '../../constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  static const String Routename = 'home';

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int Currentpage = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Stack(
        children: [
        Image.asset(
        provider.isLightmode()
        ? 'assets/images/main-background.png'
        : 'assets/images/bg_dark.png',
    width: double.infinity,
    height: double.infinity,
    fit: BoxFit.fill),
    Scaffold(
    appBar: AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text(AppLocalizations.of(context)!.app_title,
    style: TextStyle(color: constants.appbarcolor)),
    backgroundColor: Colors.transparent,
    ),
    backgroundColor: Colors.transparent,
    bottomNavigationBar: BottomNavigationBar(
    onTap: (index) {
    Currentpage = index;
    setState(() {});
    },
    currentIndex: Currentpage,
    type: BottomNavigationBarType.fixed,
    backgroundColor: provider.isLightmode()
    ? constants.primarycolor
        : constants.btmnavdark,
    selectedItemColor: provider.isLightmode()?constants.selectediconcolor:constants.unselectediconcolor,
    unselectedItemColor: constants.unselectediconcolor,
    items: [
    BottomNavigationBarItem(
    label: AppLocalizations.of(context)!.quran,
    icon: ImageIcon(AssetImage('assets/images/quran.png'),
    size: 48,)
    ),
    BottomNavigationBarItem(
    label: AppLocalizations.of(context)!.hadeth,
    icon: ImageIcon(AssetImage(
    'assets/images/quran-quran-book.png',),
    size: 48,
    )),
    BottomNavigationBarItem(
    label: AppLocalizations.of(context)!.tasbeh,
    icon: ImageIcon(AssetImage(
    'assets/images/sebha-icon.png',),
    size: 48,
    )),
    BottomNavigationBarItem(
    label: AppLocalizations.of(context)!.radio,
    icon: ImageIcon(AssetImage(
    'assets/images/radio-icon.png',),
    size: 48,
    )),
    BottomNavigationBarItem(
    label: AppLocalizations.of(context)!.settings,
    icon: Icon(Icons.settings, size: 43)),
    ],
    ),
    body: Container(child: Tabs[Currentpage])
    )
    ]
    ,
    );
  }
}
