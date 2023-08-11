import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/view/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 6), () {
Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
     });
    return  Scaffold(
      body:  Center(
        child:  ClipRRect(
          
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            "https://i.pinimg.com/originals/95/a6/f6/95a6f676049b5d2a9c82d6a9026b957f.jpg", 
            height: 100, 
            width: 100,
            fit: BoxFit.cover,), 
            
            ),
      ),
    );
  }
}