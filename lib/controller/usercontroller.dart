import 'package:flutter_get_x_counter/model/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  final user = User().obs;

  updateUser(int count){
    user.update((val) {
      val.name = 'kay';
      val.count = count;
    });
  }
}