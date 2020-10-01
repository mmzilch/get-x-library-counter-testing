import 'package:flutter/material.dart';
import 'package:flutter_get_x_counter/controller/countcontroller.dart';
import 'package:flutter_get_x_counter/controller/usercontroller.dart';
import 'package:flutter_get_x_counter/ui/secondscreen.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
              init: CountController(),
              builder: (_) {
              return Text('count value is ${_.count}');
            }),
            SizedBox(height: 22),
            GetX<UserController>(init: UserController(),
            builder: (_) {
              return Text('Name is ${_.user.value.name}');
            },),
            SizedBox(height: 22),
            Obx((){
              return Text("Store count is ${Get.find<UserController>().user.value.count}");
            }),
            SizedBox(height: 42),
            RaisedButton(
                child: Text('Update Name & Store count'), onPressed: () {
                  Get.find<UserController>().updateUser(Get.find<CountController>().count);
                }),
            SizedBox(height: 22),
            RaisedButton(child: Text('Next Screen'), onPressed: () {Get.to(SecondScreen());})
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.find<CountController>().increment();
        },
      ),
    );
  }
}
