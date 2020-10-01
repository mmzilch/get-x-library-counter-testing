import 'package:flutter/material.dart';
import 'package:flutter_get_x_counter/ui/firstscreen.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FirstScreen(),
    );
  }
}