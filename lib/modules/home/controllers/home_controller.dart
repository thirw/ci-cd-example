import 'package:ci_cd_example/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final counter = 0.obs;
  

  void increment() {
    counter.value++;
  }

  void reset() {
    counter.value = 0;
  }

  void navigateToSecondScreen() {
     Get.toNamed(AppRoutes.secondView);
  }

  void goBack() {
    return Get.back();
  }
}
