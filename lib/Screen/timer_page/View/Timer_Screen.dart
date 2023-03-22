import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class Timer_Screen extends StatefulWidget {
  const Timer_Screen({Key? key}) : super(key: key);

  @override
  State<Timer_Screen> createState() => _Timer_ScreenState();
}

class _Timer_ScreenState extends State<Timer_Screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Get.offNamed('loge');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 300.h,
              width: 200.w,
              child: Image.asset("assets/image/enter1.jpg", fit: BoxFit.fill),
            ),
            Container(
              height: 30.h,
              width: 50.w,
              margin: EdgeInsets.only(left: 27.w, top: 3.h),
              child: Lottie.asset("assets/lotti/login.json"),
            ),
            Container(
              height: 30.h,
              width: 50.w,
              margin: EdgeInsets.only(left: 27.w, top: 30.h),
              child: Lottie.asset(
                  "assets/lotti/welcome.json"),
            )
          ],
        ),
      ),
    );
  }
}
