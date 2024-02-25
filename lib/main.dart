import 'package:easyscan/splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EassyScan',
      theme: ThemeData(
        // appBarTheme: AppBarTheme(backgroundColor: Colors.amberAccent),
        iconTheme: const IconThemeData(color: Colors.white),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // brightness: Brightness.dark
      ),
      home: const SplashScreen(),
    );
  }
}
