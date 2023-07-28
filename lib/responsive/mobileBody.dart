import 'package:flutter/material.dart';
import 'package:marsell/pages/StoreManegerPage.dart';
import 'package:marsell/screens/CartScreen.dart';
import 'package:marsell/screens/HomeScreen.dart';
import 'package:marsell/screens/ProfileScreen.dart';
import 'package:marsell/screens/SettingScreen.dart';
import 'package:marsell/widgets/storecard/storeCards.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {

  // final List<Widget> _screens = [
  //   ProfileScreen(),
  //   HomeScreen(),
  //   CartScreen(),
  //   SettingScreen(),
  // ];
  //
  // int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   unselectedItemColor: Color(0xFFA3D5BE),
      //   selectedItemColor: Color(0xFF00FF8C),
      //
      //   onTap: (int index){
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      //
      //   items: const[
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'Profile'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home_filled),
      //         label: 'Home'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.shopping_bag_rounded),
      //         label: 'Cart'
      //     ),
      //     // BottomNavigationBarItem(
      //     //     icon: Icon(Icons.home_filled),
      //     //     label: 'Home'
      //     // ),
      //
      //   ],
      // ),
      // body: _screens[_selectedIndex],
    );
  }
}
