import 'package:flutter/material.dart';
import 'package:marsell/responsive/dimensions.dart';
import 'package:marsell/screens/CartScreen.dart';
import 'package:marsell/screens/Dashbord.dart';
import 'package:marsell/screens/Dashbord/mobileDashbord.dart';
import 'package:marsell/screens/Dashbord/tabletDashbord.dart';
import 'package:marsell/screens/Dashbord/desktopDashbord.dart';
import 'package:marsell/screens/HomeScreen.dart';
import 'package:marsell/screens/Profile/desktopProfileScreen.dart';
import 'package:marsell/screens/Profile/mobileProfileScreen.dart';
import 'package:marsell/screens/Profile/tabletProfileScreen.dart';
import 'package:marsell/screens/ProfileScreen.dart';
import 'package:marsell/screens/SettingScreen.dart';
import 'package:marsell/widgets/constants/drawerconstants.dart';
import 'package:marsell/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:marsell/widgets/storecard/storeCards.dart';
import 'package:marsell/widgets/colorcode/colorcodes.dart';

import 'package:marsell/screens/Home/mobileHomeScreen.dart';
import 'package:marsell/screens/Home/tabletHomeScreen.dart';
import 'package:marsell/screens/Home/desktopHomeScreen.dart';


class MyResponsiveLayout extends StatefulWidget{
  const MyResponsiveLayout({super.key});

  @override
  State<MyResponsiveLayout> createState() => _MyResponsiveLayoutState();

}

class _MyResponsiveLayoutState extends State<MyResponsiveLayout> {

  final List<Widget> _mobileScreens = [
    mobileProfileScreen(),
    mobileHomeScreen(),
    mobileDashBord(),
    // CartScreen(),
    // SettingScreen(),
  ];

  final List<Widget> _tabletScreens = [
    tabletProfileScreen(),
    tabletHomeScreen(),
    tabletDashBord(),
  ];

  final List<Widget> _dektopScreens = [
    desktopProfileScreen(),
    desktopHomeScreen(),
    dektopDashBord()
  ];

  int _selectedIndex = 2;

  // final Widget mobileBody;
  // final Widget desktopBody;
  // MyResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains){
      if(constrains.maxWidth < mobileWidth) {
        return Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.white,
          // ),
          // body: NestedScrollView(
          //   floatHeaderSlivers: true,
          //   headerSliverBuilder: (context, InnerBoxIsScrolled)=>[
          //     SliverAppBar(
          //       floating: true,
          //       snap: true,
          //       backgroundColor: Colors.white,
          //       forceElevated: InnerBoxIsScrolled,
          //       leading: BackButton(color: inActiveColor),
          //       iconTheme: IconThemeData(color: inActiveColor),
          //     )
          //   ],
          //   body: _mobileScreens[_selectedIndex],
          // ),
          body: _mobileScreens[_selectedIndex],
          endDrawer: mySmallDrawer,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: inActiveColor,
            selectedItemColor: activeActiveColor,

            onTap: (int index){
              setState(() {
                _selectedIndex = index;
              });
            },

            items: const[
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: 'Dashbord',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.shopping_bag_rounded),
              //   label: 'Cart'
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.settings),
              //   label: 'Settings'
              // ),

            ],
          ),
        );
          // return mobileBody;
      }
      else if(constrains.maxWidth < tabletWidth){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            leading: BackButton(color: inActiveColor),
            iconTheme: IconThemeData(color: inActiveColor),
          ),
          endDrawer: mySmallDrawer,
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
                        label: Text('Account')
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.home_rounded),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.dashboard),
                      label: Text('Dashbord'),
                    ),
                    // NavigationRailDestination(
                    //   icon: Icon(Icons.shopping_bag_rounded),
                    //   label: Text('Cart'),
                    // ),
                    // NavigationRailDestination(
                    //   icon: Icon(Icons.settings),
                    //   label: Text('Settings'),
                    // ),
                  ],
                  selectedIndex: _selectedIndex
              ),
              Expanded(child: _tabletScreens[_selectedIndex]),
            ],
          ),
        );
      }
      else{
        return Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.white,
          //   elevation: 0.5,
          //   leading: BackButton(color: inActiveColor),
          //   iconTheme: IconThemeData(color: inActiveColor),
          // ),
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
                      label: Text('Account')
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.home_rounded),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.dashboard),
                    label: Text('Dashbord'),
                  ),
                  // NavigationRailDestination(
                  //   icon: Icon(Icons.shopping_bag_rounded),
                  //   label: Text('Cart'),
                  // ),
                  // NavigationRailDestination(
                  //   icon: Icon(Icons.settings),
                  //   label: Text('Settings'),
                  // ),
                ],
                selectedIndex: _selectedIndex
              ),
              Expanded(child: _dektopScreens[_selectedIndex]),
              myLargeDrawer,
            ],
          ),
        );
        // return desktopBody;
      }
    });
  }
}



// class MyResponsivLayout extends StatelessWidget{
//   final Widget mobileBody;
//   final Widget desktopBody;
//
//   MyResponsivLayout({required this.mobileBody, required this.desktopBody});
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constrains){
//       if(constrains.maxWidth < mobileWidth) {
//           return mobileBody;
//       }
//       else{
//         return desktopBody;
//       }
//     });
//   }
//
// }
