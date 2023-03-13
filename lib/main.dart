import 'package:ai_project/ui/screens/HomePage.dart';
import 'package:ai_project/ui/screens/ScanSuccess.dart';
import 'package:ai_project/ui/screens/SplashScreen.dart';
import 'package:ai_project/ui/screens/Uploading.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
         home: SplashScreen(),
    );
  }
}
