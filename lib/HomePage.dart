import 'package:flutter/material.dart';
import 'package:marsell/responsive/desktopBody.dart';
import 'package:marsell/responsive/mobileBody.dart';
import 'package:marsell/responsive/responsive_layout.dart';
import 'package:marsell/screens/CartScreen.dart';
import 'package:marsell/screens/HomeScreen.dart';
import 'package:marsell/screens/ProfileScreen.dart';
import 'package:marsell/screens/SettingScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyResponsiveLayout(),
      // body: MyResponsiveLayout(
      //   mobileBody: MobileBody(),
      //   desktopBody: DesktopBody(),
      // ),
    );
  }
}
