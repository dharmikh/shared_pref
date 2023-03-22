import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Home_Controller extends GetxController {
  Rx<TextEditingController> txtlogin1 = TextEditingController().obs;
  Rx<TextEditingController> txtlogin2 = TextEditingController().obs;
  Rx<TextEditingController> txtsign1 = TextEditingController().obs;
  Rx<TextEditingController> txtsign2 = TextEditingController().obs;
  Rx<TextEditingController> txtname = TextEditingController().obs;
  Rx<GlobalKey<FormState>> txtkey = GlobalKey<FormState>().obs;
// Rx<TextEditingController> txt = TextEditingController().obs;


}
