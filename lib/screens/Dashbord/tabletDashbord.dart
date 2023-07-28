import 'package:flutter/material.dart';
import 'package:marsell/widgets/colorcode/colorcodes.dart';

class tabletDashBord extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1/4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
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

          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: ListView.builder(
                          itemCount: 15,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AspectRatio(
                                aspectRatio: 16/4,
                                child: Container(
                                  color: Colors.white,
                                  height: 100,
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}