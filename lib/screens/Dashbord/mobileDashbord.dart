import 'package:flutter/material.dart';
import 'package:marsell/widgets/buttons/circle_icon_button.dart';
import 'package:marsell/widgets/colorcode/colorcodes.dart';
import 'package:marsell/widgets/constants/drawerconstants.dart';

class mobileDashBord extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      endDrawer: mySmallDrawer,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text('nano', style: const TextStyle(color: activeActiveColor),),
            centerTitle: false,
            floating: true,
            actions: [
              CircleIconButton(
                  icon: Icons.search, iconSize: 24.0, onPressed: () => print('search'),
              ),
              CircleIconButton(
                icon: Icons.qr_code_scanner, iconSize: 24.0, onPressed: () => print('scan qr'),
              ),
              CircleIconButton(
                icon: Icons.notifications, iconSize: 24.0, onPressed: () => print('notifications'),
              ),
              CircleIconButton(
                icon: Icons.menu, iconSize: 24.0, onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              AspectRatio(
                  aspectRatio: 4/4,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                          itemCount: 4,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                                child: Container(
                                color: Colors.white,
                                child: Center(child: Text('${index}')),
                              ),
                            );
                          }
                      ),
                    ),
                  ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(8.0),
                  physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index)=> Container(
                      height: 100,
                      color: Colors.white,
                      child: Text("${index+1}"),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 8,
                    ),
                    itemCount: 20,
                ),
            ]),
          ),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       AspectRatio(
      //         aspectRatio: 1,
      //         child: Padding(
      //           padding: const EdgeInsets.all(4.0),
      //           child: SizedBox(
      //             width: double.infinity,
      //             child: GridView.builder(
      //               itemCount: 4,
      //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 2,
      //               ),
      //               itemBuilder: (context, index){
      //                 return Padding(
      //                   padding: const EdgeInsets.all(4.0),
      //                   child: Container(
      //                     color: Colors.white,
      //                     child: Center(child: Text('${index+1}')),
      //                   ),
      //                 );
      //               }
      //             ),
      //           ),
      //         ),
      //       ),
      //
      //       Flexible(
      //         child: ListView.separated(
      //           shrinkWrap: true,
      //           padding: EdgeInsets.all(8),
      //           physics: NeverScrollableScrollPhysics(),
      //             itemBuilder: (context, index)=> Container(
      //               height: 100,
      //               color: Colors.white,
      //               child: Text("${index+1}"),
      //             ),
      //             separatorBuilder: (context, index) => SizedBox(
      //               height: 8,
      //             ),
      //             itemCount: 20,
      //         ),
      //           // child: ListView.builder(
      //           //   itemCount: 10,
      //           //   physics: NeverScrollableScrollPhysics(),
      //           //   shrinkWrap: true,
      //           //   itemBuilder: (context, index){
      //           //     return Padding(
      //           //       padding: const EdgeInsets.all(8.0),
      //           //       child: AspectRatio(
      //           //         aspectRatio: 16/4,
      //           //         child: Container(
      //           //           color: Colors.white,
      //           //           height: 100,
      //           //         ),
      //           //       ),
      //           //     );
      //           //   }
      //           // ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}