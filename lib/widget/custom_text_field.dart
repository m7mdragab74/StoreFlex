import 'package:flutter/material.dart';

class CustomFormTextFieldWidget extends StatelessWidget {
  const CustomFormTextFieldWidget(
      {super.key, required this.label, this.onChange, required this.obscure});
  final String label;
  final void Function(String)? onChange;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
      },
      obscureText: obscure,
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
