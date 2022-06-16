import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? onChange;
  final String? Function(String?)? validate;
  final String label;
  final bool obsecure;
  const CustomForm(
      {Key? key,
      required this.controller,
      this.onChange,
      this.validate,
      required this.label,
      this.obsecure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableInteractiveSelection: true,
      onChanged: onChange,
      validator: validate,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}
