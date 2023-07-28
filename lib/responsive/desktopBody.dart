import 'package:flutter/material.dart';
import 'package:marsell/screens/CartScreen.dart';
import 'package:marsell/screens/HomeScreen.dart';
import 'package:marsell/screens/ProfileScreen.dart';
import 'package:marsell/screens/SettingScreen.dart';

class DesktopBody extends StatefulWidget{
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();

}

class _DesktopBodyState extends State<DesktopBody>{
  final List<Widget> _screens = [
    ProfileScreen(),
    HomeScreen(),
    CartScreen(),
    SettingScreen(),
  ];

  int _selectedIndex = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
              onDestinationSelected: (int index){
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: const[
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text('Profile')
                ),
                NavigationRailDestination(
                    icon: Icon(Icons.home_filled),
                    label: Text('Home'),
                ),
                NavigationRailDestination(
                    icon: Icon(Icons.shopping_bag_rounded),
                    label: Text('Cart'),
                ),
              ],
              selectedIndex: _selectedIndex
          ),
          Expanded(child: _screens[_selectedIndex])
        ],
      ),
    );
  }
}