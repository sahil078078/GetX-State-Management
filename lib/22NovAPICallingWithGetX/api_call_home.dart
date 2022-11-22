import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_state_managemant/22NovAPICallingWithGetX/api_controller.dart';
import 'package:getx_state_managemant/22NovAPICallingWithGetX/user_model.dart';

class APICallingHome extends StatelessWidget {
  APICallingHome({Key? key}) : super(key: key);
  final APIController apiController = Get.put(APIController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'API Calling',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.blueGrey,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      ),
      body: GetBuilder(
        init: APIController(),
        builder: (controller) {
          return FutureBuilder(
            future: controller.userModelList(),
            builder: (context, snapshot) {
              return (snapshot.data != null && snapshot.data!.isSuccess.value)
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data?.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        UserModel model = snapshot.data!.data!.elementAt(index);
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 3,
                          ),
                          child: Card(
                            margin: EdgeInsets.zero,
                            elevation: 0.5,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ID : ${model.id}',
                                  ),
                                  Text(
                                    'UserID : ${model.userId}',
                                  ),
                                  Text(
                                    "Title : ${model.title}",
                                  ),
                                  Text(
                                    'Body : ${model.body}',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            },
          );
        },
      ),
    );
  }
}
