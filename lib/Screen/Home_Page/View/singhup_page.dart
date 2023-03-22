import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_pref/Screen/Home_Page/Controller/Home_controller.dart';
import 'package:shared_pref/utils/shared_pref/shared_page.dart';
import 'package:sizer/sizer.dart';

class Sing_Screen extends StatefulWidget {
  const Sing_Screen({Key? key}) : super(key: key);

  @override
  State<Sing_Screen> createState() => _Sing_ScreenState();
}

class _Sing_ScreenState extends State<Sing_Screen> {
  Home_Controller home_controller = Get.put(Home_Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: home_controller.txtkey.value,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 100.h,
                  width: 300.w,
                  child: Image.asset(
                    "assets/image/pan.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 15.h,
                      width: 30.w,
                      margin: EdgeInsets.only(left: 5.h, top: 20.w),
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.farsan(
                            color: Colors.white, fontSize: 50),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 11.h, left: 10.w),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 6.h),
                        child: Text(
                          "Create Your ",
                          style: GoogleFonts.farsan(
                              color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.h, right: 10),
                        child: Text(
                          "Account",
                          style: GoogleFonts.farsan(
                              color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Your Name";
                        }
                      },
                      controller: home_controller.txtname.value,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey.shade200,
                          size: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 20,
                        ),
                        prefixIconConstraints: BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 25,
                        ),
                        border: InputBorder.none,
                        hintText: "Enter Your Name",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Your Eamil";
                        }
                      },
                      controller: home_controller.txtsign1.value,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey.shade200,
                          size: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                          size: 20,
                        ),
                        prefixIconConstraints: BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 25,
                        ),
                        border: InputBorder.none,
                        hintText: "Enter Your Email",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Your Eamil";
                        }
                      },
                      controller: home_controller.txtsign2.value,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey.shade200,
                          size: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                          size: 20,
                        ),
                        prefixIconConstraints: BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 25,
                        ),
                        border: InputBorder.none,
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                InkWell(
                  onTap: () {
                    if (home_controller.txtkey.value.currentState!.validate()) {
                      SheredHelper.sheredHelper.createShared(
                          email: home_controller.txtsign1.value.text,
                          pass: home_controller.txtsign2.value.text);
                      Get.offNamed('loge');
                      Get.snackbar("Hi", "Your account is create");
                    }
                  },
                  child: Container(
                    height: 6.h,
                    width: 40.w,
                    margin: EdgeInsets.only(top: 65.h, left: 30.w),
                    alignment: Alignment.center,
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 20),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 75.h, left: 2.w),
                  child: Row(
                    children: [
                      Container(
                        height: 1,
                        width: 40.w,
                        color: Colors.white,
                      ),
                      Text(
                        " or Signup ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: 1,
                        width: 40.w,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 6.h,
                          width: 30.w,
                          margin: EdgeInsets.only(top: 80.h, left: 10.w),
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/image/google1.png",
                            height: 10.h,
                            width: 10.h,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                        ),
                        SizedBox(width: 20.w),
                        Container(
                          height: 6.h,
                          width: 30.w,
                          margin: EdgeInsets.only(top: 80.h),
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.asset("assets/image/facebook.png",
                                fit: BoxFit.fill),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.w, top: 5.h),
                          child: Text(
                            "Already have account ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: InkWell(
                            onTap: () {
                              Get.offNamed('loge');
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
