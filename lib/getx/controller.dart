import 'package:get/get.dart';

class SimpleCounter extends GetxController {
  int count = 0;

  void increase() {
    ++count;
    update();
  }
}

class ReactiveCounter extends GetxController {
  var count = 0.obs;
  void increase() {
    count++;
  }
}
