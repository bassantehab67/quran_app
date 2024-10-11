import 'package:flutter/material.dart';
import 'package:quran_app/core/TitleManager.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/tabs/hadith_tab/HadithTab.dart';
import 'package:quran_app/presentation/tabs/quran_tab/quranTab.dart';
import 'package:quran_app/presentation/tabs/radio_tab/RadioTab.dart';
import 'package:quran_app/presentation/tabs/sebha_tab/SebhanTab.dart';
import 'package:quran_app/presentation/tabs/settings_tab/SettingsTab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetsManager.lightSBackground,
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: const Text(TitleManager.title),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedTab,
            onTap: (index) => {selectedTab = index, setState(() {})},
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                  label: TitleManager.quranTitle),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.hadesIcon)),
                  label: TitleManager.hadithTitle),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
                  label: TitleManager.sebhaTitle),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                  label: TitleManager.radioTitle),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: TitleManager.settingsTitle),
            ],
          ),
          body: tabs[selectedTab],
        ),
      ],
    );
  }
}
