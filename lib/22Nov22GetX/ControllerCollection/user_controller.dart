import 'package:get/get.dart';

class UserController extends GetxController {
  final user = User().obs;
  // user class have derfault value
  // so no need to give value

  updateUser({required int count, required String name}) {
    user.update((User? value) {
      value!.name = name;
      value.count = count;
    });
  }
}

class User {
  String name;
  int count;

  User({
    this.name = '',
    this.count = 0,
  });
}
