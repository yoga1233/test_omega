import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainController extends GetxController {
  RxInt index = 1.obs;

  currentIndex(int indexPage) => index.value = indexPage;

  RxBool isLogin = false.obs;
  GetStorage box = GetStorage();

  login() {
    if (box.read("isLogin") == true) {
      isLogin.value = true;
    } else {
      isLogin.value = false;
    }
  }
}
