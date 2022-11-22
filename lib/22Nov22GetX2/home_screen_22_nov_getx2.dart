import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_state_managemant/22Nov22GetX2/second_page.dart';

class HomeScreen22NovGetX2 extends StatelessWidget {
  const HomeScreen22NovGetX2({Key? key}) : super(key: key);

  goToNext(BuildContext context) {
    ///  navigator methord need context for navigator
    // Navigator.push(
    //   context,
    //   CupertinoPageRoute(
    //     builder: (context) => const SecondPage(),
    //   ),
    // );

    /// navigation using getX there is no longer need to
    /// context and it more flexible and more controllable then
    /// Navigator.push() and Name route

    Get.to(
      () => const SecondPage(),
      curve: Curves.bounceInOut,
      duration: const Duration(
        milliseconds: 200,
      ),
      opaque: true,
    );

    // navigator?.push(
    //   CupertinoPageRoute(
    //     builder: (context) => const SecondPage(),
    //   ),
    // );
  }

  void _showSnackBar() {}
  void _showDialog() {}
  void _showBottomSheet() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Get Package | Home',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => goToNext(context),
                child: const Text('Go To SecondPage'),
              ),
              ElevatedButton(
                onPressed: _showSnackBar,
                child: const Text('SnackBar2'),
              ),
              ElevatedButton(
                onPressed: _showDialog,
                child: const Text('Dialog'),
              ),
              ElevatedButton(
                onPressed: _showBottomSheet,
                child: const Text('Bottom Sheet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
