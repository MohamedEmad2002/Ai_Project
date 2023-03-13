import 'dart:ui';

import 'package:flutter/material.dart';

class ScanSuccess extends StatelessWidget {
  const ScanSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/christina-wocintechchat-com-0Zx1bDv5BNY-unsplash.png"),
                    fit: BoxFit.fill,
                  )
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 4,sigmaX: 4 ),
                child:  Container(
                  padding: const EdgeInsets.only(left: 40),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height:150),
                      Center(
                        child: Row(
                          children: const [
                            Text("Good News",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Center(
                        child: Row(
                          children: const [
                            Text("you are obviously very Happy."
                                "I hope your Joy lasts",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 200,),
                      Container(
                        height: 45,
                        margin: const EdgeInsets.only(top: 50),
                        padding: const EdgeInsets.only(right:20,),
                        child: ElevatedButton(onPressed: (){},style: const ButtonStyle(

                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0)))),
                          backgroundColor:  MaterialStatePropertyAll(Colors.black87,),
                        ),
                            child: Row(
                              children:  [
                                const Text("Try another photo"),
                                const Spacer(),
                                Center(
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const FittedBox(child: Icon(Icons.arrow_forward_ios,size: 35,color: Color(0xff061224),))),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
