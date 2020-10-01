import 'package:get/get.dart';

class SumController extends GetxController{
  final count1 = 0.obs;
  final count2 = 0.obs ;

  increment1() => count1.value++;
  increment2() => count2.value++;

  int get sum => count1.value + count2.value;

  @override
  void onInit() {
    super.onInit();
    ever(count1, (_) => print('count 1 has been changed'));
    once(count1, (_) => print('first time count 1 has been changed'));
    debounce(count1, (_) => print('count 1 has not been changed for 1s'),time: Duration(seconds: 1));
    interval(count1, (_) => print('every 1 secound count 1 has changed'), time: Duration(seconds: 1));
  }
}