import 'package:ci_cd_example/modules/home/bindings/home_binding.dart';
import 'package:ci_cd_example/modules/home/views/home_view.dart';
import 'package:ci_cd_example/modules/home/views/second_view.dart';
import 'package:get/route_manager.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.homeView,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.secondView,
      page: () => SecondView(),
      binding: HomeBinding(),
    ),
  ];
}
