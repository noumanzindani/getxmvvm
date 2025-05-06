import 'package:get/get.dart';
import 'package:getxmvvm/resources/routes/routes_name.dart';
import 'package:getxmvvm/view/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RoutesName.splashview,
      page: () => SplashView(),
      // transitionDuration: const Duration(milliseconds: 500),
      // transition: Transition.leftToRight,
    ),
  ];
}
