import 'dart:async';
import 'package:ai_project/ui/screens/HomePage.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                HomePage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xff061224),
     body: SafeArea(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
               child: const Text("Emotion",style: TextStyle(
                 color: Colors.white,fontSize: 40
               ),)
           ),
           Container(
             padding: const EdgeInsets.only(left: 40),
               child: const Text("Recognition",style: TextStyle(
                   color: Colors.white,fontSize: 40
               ),)
           ),
         ],
       ),
     ),

    );
  }
}
