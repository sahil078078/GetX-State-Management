import 'package:get/get.dart';

class Nov22Controller extends GetxController {
  // tab1Counter
  RxInt counterNumber = 0.obs;

  void incrementValue() {
    counterNumber++;
  }

  void decrementValue() {
    if (counterNumber > 0) {
      counterNumber--;
    }
  }

  //tab2Counter

  int count = 0;

  void increment() {
    count++;
    update();
  }
}
