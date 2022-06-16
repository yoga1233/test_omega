import 'package:get/get.dart';
import 'package:test_omega/app/modules/login/bindings/login_binding.dart';
import 'package:test_omega/app/modules/login/views/login_page.dart';
import 'package:test_omega/app/modules/main/bindings/main_binding.dart';
import 'package:test_omega/app/modules/main/views/main_page.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    )
  ];
}
