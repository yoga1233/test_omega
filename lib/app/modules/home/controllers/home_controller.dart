import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  RxString isLogin = ''.obs;
  GetStorage box = GetStorage();
  login() {
    isLogin.value = box.read("isLogin");
  }

  @override
  void onInit() {
    login();
    super.onInit();
  }
}
