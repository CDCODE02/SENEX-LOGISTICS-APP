import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senex_logistics/const/AppColors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),()=>Navigator.push(context, CupertinoPageRoute(builder: (_)=>LoginScreen())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deep_orange,
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text("SENEX",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 44.sp),),
                 SizedBox(height: 5.h,),
                 Text("LOGISTICS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 22.sp),),
                 SizedBox(height: 20.h,),
                 CircularProgressIndicator(color: Colors.blueGrey,),
            ],
        ),
          ),
      ),
    );
  }
}
