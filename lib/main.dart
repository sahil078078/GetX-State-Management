import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_managemant/22Nov22GetX2/home_screen_22_nov_getx2.dart';
import 'package:getx_state_managemant/22Nov22GetX2/nov22_themedata.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // give awaibility of controller
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX StateManagement',
      theme: nov22ThemeData(),
      // home: const Nov22Home(),
      home: const HomeScreen22NovGetX2(),
    );
  }
}
