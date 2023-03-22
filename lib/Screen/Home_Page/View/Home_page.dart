import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Wel Come"),
        //   centerTitle: true,
        // ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Lottie.asset("assets/lotti/hello.json",fit: BoxFit.fill),
        ),
      ),
    );
  }
}
