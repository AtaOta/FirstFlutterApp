import 'package:flutter/material.dart';
import 'package:marsell/widgets/colorcode/colorcodes.dart';

var mySmallDrawer = Drawer(
  backgroundColor: Colors.white,
  child: Column(
    children: const [
      ListTile(
        leading: Icon(
          Icons.arrow_back,
          color: inActiveColor,
        ),
        title: Text('Back'),
      ),
      ListTile(
        leading: Icon(
          Icons.palette_rounded,
          color: inActiveColor,
        ),
        title: Text('Colour Palette'),
      ),
      ListTile(
        leading: Icon(
          Icons.language,
          color: inActiveColor,
        ),
        title: Text('Select Language'),
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: inActiveColor,
        ),
        title: Text('Settings'),
      )
    ],
  ),
);

var myLargeDrawer = Drawer(
  backgroundColor: Colors.white,
  elevation: 0.5,
  child: Column(
    children: const [
      ListTile(
        leading: Icon(
          Icons.palette_rounded,
          color: inActiveColor,
        ),
        title: Text('Colour Palette'),
      ),
      ListTile(
        leading: Icon(
          Icons.language,
          color: inActiveColor,
        ),
        title: Text('Select Language'),
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: inActiveColor,
        ),
        title: Text('Settings'),
      ),
      ListTile(
        leading: Icon(
          Icons.notifications,
          color: inActiveColor,
        ),
        title: Text('Notifications'),
      )
    ],
  ),
);