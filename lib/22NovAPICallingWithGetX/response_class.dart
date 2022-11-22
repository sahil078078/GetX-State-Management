import 'package:get/get.dart';

class ResponseClass<T> {
  RxBool isSuccess;
  RxString msg;
  T? data;

  ResponseClass({
    required this.isSuccess,
    required this.msg,
    this.data,
  });
}
