import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  RxBool isValidUserName = false.obs;
  RxBool isValidPassword = false.obs;

  RxBool isValidateForm = false.obs;

  RxString username = ''.obs;
  RxString password = ''.obs;
  GetStorage box = GetStorage();

  isValidUser(bool valid) => isValidUserName.value = valid;
  isValidPass(bool valid) => isValidPassword.value = valid;

  validForm() {
    if (isValidUserName.value == true && isValidPassword.value == true) {
      isValidateForm.value = true;
    } else {
      isValidateForm.value = false;
    }
  }

  isLogin() {
    if (username.value == 'user' && password.value == '123456') {
      box.write("isLogin", "true");
    } else {
      box.write("isLogin", "false");
    }
  }
}
