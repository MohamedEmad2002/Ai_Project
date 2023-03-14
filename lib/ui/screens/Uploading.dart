import 'dart:async';

import 'package:ai_project/ui/screens/ScanSuccess.dart';
import 'package:flutter/material.dart';

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
              width: double.infinity,
              child: Image.asset("assets/images/christina-wocintechchat-com-0Zx1bDv5BNY-unsplash.png",fit: BoxFit.fill),
            ),
         Positioned(
           left: 80,
           top: 110,
           child: Container(
             child: Image.asset("assets/images/Layer 2.png"),
           ),
         ),
             Positioned(
             left: 70,
              right: 70,
              bottom: 100,
              child: Container(
                alignment: Alignment.center,
                  child: const Text('Verifying your Face...',style: TextStyle(color: Colors.white,fontSize: 20),)),
            )
          ],
        ),
      ),
    );
  }
}
