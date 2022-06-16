import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_omega/app/modules/login/controllers/login_controller.dart';

import '../widgets/custom_text_form.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController cUsername = TextEditingController();
    TextEditingController cPassword = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomForm(
                controller: cUsername,
                label: 'Username',
                onChange: (String? value) {},
                validate: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              CustomForm(
                controller: cPassword,
                label: 'Password',
                obsecure: true,
                onChange: (String? value) {},
                validate: (value) {},
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: controller.isValidateForm.value
                        ? Colors.blueAccent
                        : Colors.grey),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
