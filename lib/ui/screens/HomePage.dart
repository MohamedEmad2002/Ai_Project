import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Uploading.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:  [
          Container(
            alignment: Alignment.center,
              margin:  EdgeInsets.only(top: 80.h),
              child: Image.asset('assets/images/face-recognition-svgrepo-com.png')),
             SizedBox(height: 200.h,),
            Container(
                alignment: Alignment.topLeft,
                margin:  EdgeInsets.only(left: 40.w),
                child:  Text("Scan your face to know your emotion ",style: TextStyle(fontSize: 20.sp),)),
             SizedBox(height: 30.h,),
            Container(
             alignment: Alignment.topLeft,
                margin:  EdgeInsets.only(left:60.w ),
                child: Row(
                  children:  [
                    Icon(Icons.circle,size: 10.r,color: const Color(0xff061224)),
                     SizedBox(width: 10.w,),
                      Text('Allow Access to your gallary',style: TextStyle(fontSize: 13.sp),),
                  ],
                )),
             SizedBox(height: 30.h,),
            Container(
                alignment: Alignment.topLeft,
                margin:  EdgeInsets.only(left:60.w ),
                child: Row(
                  children:  [
                    Icon(Icons.circle,size: 10.r,color: const Color(0xff061224),),
                    SizedBox(width: 10.w,),
                     Text('Upload your photo',style: TextStyle(fontSize: 13.sp),),
                  ],
                )),
             SizedBox(height: 30.h,),
            Container(
                alignment: Alignment.topLeft,
                margin:  EdgeInsets.only(left:60.w),
                child: Row(
                  children:   [
                    Icon(Icons.circle,size: 10.r,color: const Color(0xff061224)),
                    SizedBox(width: 10.w,),
                     Text('Make sure to place a clear photo',style: TextStyle(fontSize: 13.sp),),
                  ],
                )),
             SizedBox(height: 90.h,),
            SizedBox(
              height: 50.h,
              width: 326.w,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => UploadingScreen(),));
              },style: const ButtonStyle(

                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0)))),
                backgroundColor:  MaterialStatePropertyAll(Color(0xff061224),),
              ),
                  child: Row(
                    children:  [
                       Text("Start Upload-photo",style: TextStyle(fontSize: 15.sp),),
                      const Spacer(),
                      Center(
                        child: Container(
                          width: 19.w,
                            height: 19.h,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const FittedBox(child: Icon(Icons.arrow_forward_ios,size: 35,color: Colors.black87,))),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
