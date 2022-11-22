

import 'package:get/get.dart';

class SumController extends GetxController {
  int count1 = 0; // count1.obs
  int count2 = 0; // count2.obs

  void increment1() {
    count1++;
    update();
  }

  increment2() {
    count2++;
    update();
  }

  int get sum => count1 + count2;
  // int get sum => count1.value + count2.value;


  // @override
  // void onInit() {
  //   super.onInit();
  //   ever(count1, (_) => log('count1Change : $count1'));
  //   ever(count2, (_) => log('count2Change : $count2'));
  // }
}
