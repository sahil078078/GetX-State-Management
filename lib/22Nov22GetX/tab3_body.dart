import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_managemant/22Nov22GetX/ControllerCollection/sum_controller.dart';

// ignore: must_be_immutable
class Tab3Body extends StatelessWidget {
  Tab3Body({Key? key}) : super(key: key);

  SumController sumController = Get.put(SumController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          GetBuilder<SumController>(
            init: sumController,
            builder: (_) {
              return Column(
                children: [
                  Text('Count1 : ${_.count1}'),
                  Text('Count2 : ${_.count2}'),
                  Text('Sum      : ${_.sum}'),
                ],
              );
            },
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              sumController.increment1();
            },
            child: const Text('Count1++'),
          ),
          ElevatedButton(
            onPressed: () {
              sumController.increment2();
            },
            child: const Text('Count2++'),
          ),
        ],
      ),
    );
  }
}
