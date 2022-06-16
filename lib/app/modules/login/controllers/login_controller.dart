import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isValidUserName = false.obs;
  RxBool isValidPassword = false.obs;

  RxBool isValidateForm = false.obs;

  isValidUser() => isValidUserName.toggle();
  isValidPass() => isValidPassword.toggle();

  validForm() {
    if (isValidUserName.value && isValidPassword.value) {
      isValidateForm.toggle();
    }
    isValidateForm.value = false;
  }
}
