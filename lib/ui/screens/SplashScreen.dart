import 'dart:async';
import 'package:ai_project/ui/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
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
             width: 247.w,
             height: 96.h,
             margin: EdgeInsets.only(left: 20.w),
             child: Text("Emotion Recognition",textAlign: TextAlign.start,style: TextStyle(
              color: Colors.white,fontSize: 36.sp
                 ),),
           ),
         ],
       ),
     ),
    );
  }
}
