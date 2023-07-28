import 'package:flutter/material.dart';
import 'package:marsell/HomePage.dart';
import 'package:marsell/responsive/responsive_layout.dart';

// TO CREATE ANDROID APP COMMAND :  flutter build apk --build-name=1.0.0 --build-number=1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MarSell',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: MyResponsiveLayout(),
    );
  }
}
