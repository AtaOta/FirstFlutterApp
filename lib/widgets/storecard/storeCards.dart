import 'package:flutter/material.dart';

class StoreCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            width: 150,
            color: Colors.purpleAccent,
          );
        },
        separatorBuilder: (context, index){
          return Divider(thickness: 0,);
        },
          itemCount: 10),
    );
  }
}

// SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child: Row(
// children: [
// Padding(
// padding: const EdgeInsets.only(right: 8.0),
// child: Container(
// width: 200,
// height: 100,
// color: Colors.deepPurple[100],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 200,
// height: 100,
// color: Colors.deepPurple[100],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 200,
// height: 100,
// color: Colors.deepPurple[100],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 200,
// height: 100,
// color: Colors.deepPurple[100],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 200,
// height: 100,
// color: Colors.deepPurple[100],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 8.0),
// child: Container(
// width: 200,
// height: 100,
// color: Colors.deepPurple[100],
// ),
// ),
// ],
// ),
// );
