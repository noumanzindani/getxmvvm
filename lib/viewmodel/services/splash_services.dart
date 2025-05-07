import 'dart:async';
import 'package:getxmvvm/viewmodel/controller/login/user_prefrence/users_prefrence.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getxmvvm/resources/routes/routes_name.dart';

class SplashServices {
  UsersPrefrence usersPrefrence = UsersPrefrence();
  void isLogin() {
  usersPrefrence.getUser().then((value) {
    final token = value.token;

    if (token == null || token.isEmpty) {
      Timer(
        const Duration(seconds: 3),
        () => Get.toNamed(RoutesName.loginview),
      );
    } else {
      Timer(
        const Duration(seconds: 3),
        () => Get.toNamed(RoutesName.homeview),
      );
    }
  });
}
}
