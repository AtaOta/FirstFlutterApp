import 'package:flutter/material.dart';
import 'package:marsell/responsive/desktopBody.dart';
import 'package:marsell/responsive/mobileBody.dart';
import 'package:marsell/responsive/responsive_layout.dart';

class StoreManagerPage extends StatefulWidget {
  const StoreManagerPage({super.key});

  @override
  State<StoreManagerPage> createState() => _StoreManagerPageState();
}

class _StoreManagerPageState extends State<StoreManagerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: MyResponsivLayout(
      //   mobileBody: MobileBody(),
      //   desktopBody: DesktopBody(),
      // ),
    );
  }
}
