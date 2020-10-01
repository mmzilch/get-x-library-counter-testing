import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class AppController extends GetxController {
  var counter = 0.obs;
  void add() => counter.value++;
  void subtract() => counter.value--;
}

class Home extends StatelessWidget {
  final AppController controller = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('The counter value is:', style: TextStyle(fontSize: 25.0)),
            Obx(() => Text(
                  '${controller.counter.value}',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                )),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
              child: Text('Go to Second Page'),
              onPressed: () {
                Get.to(SecondPage());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            child: Icon(Icons.add),
            onPressed: controller.add,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: null,
            child: Icon(Icons.remove),
            onPressed: controller.subtract,
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final AppController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The value in app controller is:',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Obx(() => Text(
                  '${controller.counter.value}',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            child: Icon(Icons.add),
            onPressed: controller.add,
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            heroTag: null,
            child: Icon(Icons.remove),
            onPressed: controller.subtract,
          ),
        ],
      ),
    );
  }
}