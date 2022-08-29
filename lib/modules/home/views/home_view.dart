import 'package:ci_cd_example/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Page')),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Clicks ${_homeController.counter.value} '),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _homeController.increment(),
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => _homeController.reset(),
                    child: const Icon(Icons.refresh),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _homeController.navigateToSecondScreen(),
                child: const Text('Second Screen'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
