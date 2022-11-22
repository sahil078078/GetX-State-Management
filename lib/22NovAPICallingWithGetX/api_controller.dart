import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_state_managemant/22NovAPICallingWithGetX/response_class.dart';
import 'package:getx_state_managemant/22NovAPICallingWithGetX/user_model.dart';

import 'package:http/http.dart' as http;

class APIController extends GetxController {
  RxBool isLoading = false.obs;
  Future<ResponseClass<List<UserModel>>> userModelList() async {
    String link = 'https://jsonplaceholder.typicode.com/posts';
    ResponseClass<List<UserModel>> responseClass = ResponseClass(
      isSuccess: false.obs,
      msg: 'Something went wrong'.obs,
    );

    try {
      isLoading = true.obs;
      update();

      await Future.delayed(
        const Duration(
          seconds: 5,
        ),
      );
      var response = await http.get(Uri.parse(link));

      if (response.statusCode == 200) {
        responseClass.isSuccess = true.obs;
        isLoading = false.obs;
        List<UserModel> list = List<UserModel>.from(
          jsonDecode(response.body).map(
            (e) => UserModel.fromJson(e),
          ),
        ).toList();

        responseClass.data = list;
        update();
        return responseClass;
      } else {
        isLoading = false.obs;
        update();
        return responseClass;
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('error : $e');
      }
      isLoading = false.obs;
      update();
      return responseClass;
    }
  }
}
