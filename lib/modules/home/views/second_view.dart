import 'package:ci_cd_example/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondView extends StatelessWidget {
  SecondView({Key? key}) : super(key: key);

  final _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Second screen was click ${_homeController.counter.value} times.'),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => _homeController.goBack(),
                child: const Text('Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
