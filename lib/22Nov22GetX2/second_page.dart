import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_state_managemant/22Nov22GetX2/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  /// get.off() => current page remove ftom stack
                  /// example 1 -> 2 (get.off(3)) -> 3
                  /// 1->3  screen2 will removed

                  Get.off(
                    () => const ThirdPage(),
                  );
                },
                child: const Text('GoTo Third and remove this from stack'),
              ),
              ElevatedButton(
                onPressed: () {
                  /// get.offall() -> this will remove current and all back page from stack
                  /// and next navigated page will main page and no have back page left
                  /// example 1-> 2 (get.offall(3))->3
                  /// page(3) -> mainPage
                  Get.offAll(
                    () => const ThirdPage(),
                  );
                },
                child:
                    const Text('GoTo Third and remove everything from stack'),
              ),
              const SizedBox(height: 100),
              const Text('Data From Fourth Screen : '),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Return Data From Fourth Screen'),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                child: const Text('GoTo Name /Fourth with parameters'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
