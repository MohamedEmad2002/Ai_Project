import 'package:flutter/material.dart';

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
              margin: const EdgeInsets.only(top: 80),
              child: Image.asset('assets/images/face-recognition-svgrepo-com.png')),
            const SizedBox(height: 100,),
            Container(
              alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 40),
                child: const Text("Scan your face to know your emotion ")),
            const SizedBox(height: 30,),
            Container(
             alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left:60 ),
                child: Row(
                  children: const [
                    Icon(Icons.circle,size: 10,color: Color(0xff061224)),
                     SizedBox(width: 10,),
                     Text('Allow Access to your gallary'),
                  ],
                )),
            const SizedBox(height: 30,),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left:60 ),
                child: Row(
                  children: const [
                    Icon(Icons.circle,size: 10,color: Color(0xff061224),),
                    SizedBox(width: 10,),
                    Text('Upload your photo'),
                  ],
                )),
            const SizedBox(height: 30,),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left:60 ),
                child: Row(
                  children: const [
                    Icon(Icons.circle,size: 10,color: Color(0xff061224)),
                    SizedBox(width: 10,),
                    Text('Make sure to place a clear photo'),
                  ],
                )),
            const SizedBox(height: 170,),
            Container(
              height: 45,
              padding: const EdgeInsets.only(left: 40,right:40 ),
              child: ElevatedButton(onPressed: (){},style: const ButtonStyle(

                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0)))),
                backgroundColor:  MaterialStatePropertyAll(Color(0xff061224),),
              ),
                  child: Row(
                    children:  [
                      const Text("Start Upload-photo"),
                      const Spacer(),
                      Center(
                        child: Container(
                          width: 20,
                            height: 20,
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
