import 'dart:async';

import 'package:ai_project/ui/screens/ScanSuccess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadingScreen extends StatefulWidget {
  const UploadingScreen({Key? key}) : super(key: key);

  @override
  State<UploadingScreen> createState() => _UploadingScreenState();
}

class _UploadingScreenState extends State<UploadingScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const ScanSuccess(),
            )
        )
    );
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/christina-wocintechchat-com-0Zx1bDv5BNY-unsplash.png",fit: BoxFit.fill),
            ),
         Positioned(
           left: 80.w,
           top: 110.h,
           child: Image.asset("assets/images/Layer 2.png"),
         ),
             Positioned(
             left: 70.w,
              right: 70.w,
              bottom: 100.h,
              child: Container(
                alignment: Alignment.center,
                  child:  Text('Verifying your Face...',style: TextStyle(color: Colors.white,fontSize: 20.sp),)),
            )
          ],
        ),
      ),
    );
  }
}
