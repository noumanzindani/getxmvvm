import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/repository/login_repo.dart';
import 'package:getxmvvm/utils/utils.dart';

class LoginViewmodel extends GetxController {
  final _api = LoginRepo();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = true.obs;

  void loginApi() {
    loading.value = false;
    Map data = {
      'email': emailController.value.text,
      'password': emailController.value.text,
    };

    _api.LoginApi(data)
        .then((Value) {
          loading.value = false;

          Utils.toastMassage("Login Successfully");
        })
        .onError((error, stackTrace) {
          loading.value = false;

          Utils.toastMassage(error.toString());
        });
  }
}
