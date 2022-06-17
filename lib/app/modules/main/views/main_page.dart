import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:test_omega/app/modules/home/views/home_view.dart';
import 'package:test_omega/app/modules/main/controllers/main_controller.dart';
import 'package:test_omega/app/modules/setting/views/setting_page.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildContent(int currentIndex) {
      switch (currentIndex) {
        case 1:
          return const HomeView();
        case 2:
          return const SettingPage();
        default:
          return const HomeView();
      }
    }

    return Scaffold(
      body: Obx(() => Stack(
            children: [
              buildContent(controller.index.value),
              Positioned(
                bottom: 30,
                left: 24,
                right: 24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.currentIndex(1);
                      },
                      icon: const Icon(Icons.home),
                    ),
                    IconButton(
                      onPressed: () {
                        if (controller.isLogin.value) {
                          controller.currentIndex(2);
                        } else {
                          Get.defaultDialog(
                              onConfirm: () => Get.back(),
                              middleText: "Invalid Credential");
                        }
                      },
                      icon: const Icon(Icons.settings),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
