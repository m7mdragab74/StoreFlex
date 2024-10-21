import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  CustomTextFieldWidget({
    super.key,
    this.label,
    this.onChange,
    this.obscure,
    this.textInputType,
  });
  String? label;
  void Function(String)? onChange;
  bool? obscure;
  TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: obscure!,
      cursorColor: Colors.black,
      cursorErrorColor: Colors.black,
      onChanged: onChange,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
