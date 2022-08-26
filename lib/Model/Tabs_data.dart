import 'package:flutter/material.dart';
import 'package:islamii_app/View/Screen/Hadeth/Hadeath-tap.dart';
import 'package:islamii_app/View/Screen/radio/Radio-tap.dart';
import 'package:islamii_app/View/Screen/quran/Quran-tap.dart';
import 'package:islamii_app/View/Screen/sebha/Sebha-tap.dart';
import 'package:islamii_app/View/Screen/settings/settings_tab.dart';

List<Widget> Tabs = [
  QuranTap(),
  HadeathTap(),
  SebhaTap(),
  RadioTap(),
  SettingsTab()
];