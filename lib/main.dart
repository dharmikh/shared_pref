import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_pref/Screen/Home_Page/View/Home_page.dart';
import 'package:shared_pref/Screen/Home_Page/View/Login_page.dart';
import 'package:shared_pref/Screen/timer_page/View/Timer_Screen.dart';
import 'package:sizer/sizer.dart';
import 'Screen/Home_Page/View/singhup_page.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // initialRoute: 'loge',
          routes: {
            '/': (p0) => Timer_Screen(),
            'loge': (p0) => Login_Screen(),
            'sign': (p0) => Sing_Screen(),
            'home': (p0) => Home_Page(),
          },
        );
      },
    ),
  );
}
