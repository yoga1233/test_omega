import 'dart:developer';

import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isValidUserName = false.obs;
  RxBool isValidPassword = false.obs;

  RxBool isValidateForm = false.obs;

  isValidUser(bool valid) => isValidUserName.value = valid;
  isValidPass(bool valid) => isValidPassword.value = valid;

  validForm() {
    if (isValidUserName.value == true && isValidPassword.value == true) {
      isValidateForm.value = true;
    } else {
      isValidateForm.value = false;
    }
  }
}
