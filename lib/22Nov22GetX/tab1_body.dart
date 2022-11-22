import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_managemant/22Nov22GetX/ControllerCollection/nov_22_controller.dart';

class Tab1Body extends GetView<Nov22Controller> {
  const Tab1Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Nov22Controller controller = Get.put(Nov22Controller());
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('CounterValue : ${controller.counterNumber.value}'),
          Obx(
            () => Text('${controller.counterNumber.value}'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.incrementValue();
                },
                child: const Icon(
                  CupertinoIcons.add,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.decrementValue();
                },
                child: const Icon(
                  CupertinoIcons.minus,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
