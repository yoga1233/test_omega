import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  RxBool isValidUserName = false.obs;
  RxBool isValidPassword = false.obs;

  RxBool isValidateForm = false.obs;

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

  isLogin(String username, String password) {
    if (username == 'user' && password == '123456') {
      box.write("isLogin", "true");
      print('berhasil login');
    } else {
      box.write("isLogin", "false");
      print('username atau password salah');
    }
  }
}
