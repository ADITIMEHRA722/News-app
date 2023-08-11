import 'package:flutter/material.dart';
import 'package:news_app/view/home.dart';
import 'package:news_app/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News',
      
      theme: ThemeData(
        
        primaryColor:Colors.white,
        useMaterial3: true,
      ),
      home:SplashScreen(),
    );
  }
}

