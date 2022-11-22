import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_managemant/22Nov22GetX/ControllerCollection/nov_22_controller.dart';
import 'package:getx_state_managemant/22Nov22GetX/ControllerCollection/user_controller.dart';

class Tab2Body extends StatelessWidget {
  const Tab2Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Nov22Controller countController = Get.put(Nov22Controller());
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          GetBuilder<Nov22Controller>(
            init: Nov22Controller(), // initialize controller
            builder: (controller) =>
                Text('Current Count Value : ${controller.count}'),
          ),
          // Text('Count : ${countController.count}'),
          // above value is not update untill you do hotReload
          // .obs and Obx((){}) will work so file
          // same as GetBuilder()
          const SizedBox(height: 40),
          GetX<UserController>(
            init: UserController(),
            // initialize Controller
            builder: (_) {
              return Column(
                children: [
                  Text('Name : ${_.user.value.name}'),
                  Text('Count : ${_.user.value.count}')
                ],
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<UserController>().updateUser(
                count: 125,
                name: 'Night King',
              );
            },
            child: const Text(
              'Update name & Store count',
            ),
          ),

          const SizedBox(height: 30),
          const Text('Using Obx'),
          Obx(
            () {
              return Column(
                children: [
                  Text('Name : ${Get.find<UserController>().user.value.name}'),
                  Text('Count : ${Get.find<UserController>().user.value.count}')
                ],
              );
            },
          ),

          const SizedBox(height: 30),

          ElevatedButton(
            onPressed: () {
              Get.find<UserController>().updateUser(
                count: Get.find<Nov22Controller>().count,
                name: "bhuru",
              );
            },
            child: const Text('One to another controller'),
          ),

          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                // countController.increment();
                Get.find<Nov22Controller>().increment();
                // above method we find controller
                // and then user method
              },
              child: const Icon(
                Icons.add,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
