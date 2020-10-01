import 'package:flutter/material.dart';
import 'package:flutter_get_x_counter/controller/sumcontroller.dart';
import 'package:get/get.dart';

class SecondScreen extends GetWidget<SumController>{
  // final sumController = Get.put(SumController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<SumController>(
                builder: (_) {
                  print('count 1 rebuild');
                  return Text('Counter1:  ${_.count1.value}');
                },
              ),
              Icon(Icons.add_circle,color: Colors.cyan,),
              GetX<SumController>(
                builder: (_) {
                  print('count 2 rebuild');
                  return Text('Counter2:  ${_.count2.value}');
                },
              ),
              Icon(Icons.arrow_circle_down, color: Colors.cyan,),
              GetX<SumController>(
                builder: (_) {
                  return Text('sum : ${_.sum}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ));
                },
              ),
              SizedBox(height: 40),
              RaisedButton(
                  child: Text('Increment counter #1'),
                  onPressed: () {
                    controller.increment1();
                  }),
              RaisedButton(
                  child: Text('Increment counter #2'),
                  onPressed: () {
                    controller.increment2();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
