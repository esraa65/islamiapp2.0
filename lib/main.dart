import 'package:flutter/material.dart';
import 'package:islamii_app/View/Screen/Hadeth/HadethDetailsScreen.dart';
import 'package:islamii_app/View/Screen/homepage.dart';
import 'package:islamii_app/provider/AppconfigProvider.dart';
import 'View/Screen/quran/SuraDetailsScreen.dart';
import 'constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider<AppConfigProvider>(
      create: (buildContext) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      darkTheme: constants.darktheme,
      themeMode: provider.appTheme,
      theme: constants.lighttheme,
      debugShowCheckedModeBanner: false,
      routes: {
        Homepage.Routename: (buildContext) => Homepage(),
        SuraDetailsScreen.Routename: (buildContext) => SuraDetailsScreen(),
        HadethDetailsScreen.Routename: (buildContext) => HadethDetailsScreen()
      },
      initialRoute: Homepage.Routename,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.applangauge),
    );
  }
}
