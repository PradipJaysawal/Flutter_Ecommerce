import 'package:fecommerce/model/register_model.dart';
import 'package:fecommerce/routes/app_routes.dart';
import 'package:fecommerce/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;
  var isLoading = false.obs;
  var message = RegisterModel(success: false, token: null, message: null).obs;

  //Text editing controller
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var whatsapp = TextEditingController();

  void checkAuth() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.login);
    });
  }

  //register
  Future register() async {
    try {
      isLoading(true);
      var response = await AuthService.register(
        name.text,
        email.text,
        password.text,
        whatsapp.text,
      );
      if (response.statusCode == 200) {
        message.value = RegisterModel.fromJson(response.data);
      }
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkAuth();
  }
}
