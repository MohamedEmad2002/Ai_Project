import 'package:flutter/material.dart';

class UploadingScreen extends StatelessWidget {
  const UploadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(

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
