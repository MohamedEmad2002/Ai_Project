import 'dart:ui';

import 'package:ai_project/ui/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                image: AssetImage(
                    "assets/images/christina-wocintechchat-com-0Zx1bDv5BNY-unsplash.png"),
                fit: BoxFit.fill,
              )),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 4.w, sigmaX: 4.h),
                child: Container(
                  padding: EdgeInsets.only(left: 40.w),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 300.h),
                      SizedBox(
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              Text(
                                "Good News",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 322.w,
                        height: 42.h,
                        child: Text(
                          "you are obviously very Happy."
                          "I hope your Joy lasts",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                      ),
                       SizedBox(
                        height: 240.h,
                      ),
                      Container(
                        padding:EdgeInsets.only(right: 30.w) ,
                        height: 50.h,
                        width: 326.w,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                            },
                            style:  ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0.w)))),
                              backgroundColor: const MaterialStatePropertyAll(
                                Colors.black87,
                              ),
                            ),
                            child: Row(
                              children: [
                                 Text("Try another photo",style: TextStyle(fontSize: 15.sp),),
                                const Spacer(),
                                Center(
                                  child: Container(
                                      width: 19.w,
                                      height: 19.h,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child:  FittedBox(
                                          child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 35.r,
                                        color: const Color(0xff061224),
                                      ))),
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
