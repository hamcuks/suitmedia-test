import 'dart:developer';

import 'package:flutter/material.dart';

class AppInputForm extends StatelessWidget {
  const AppInputForm({
    Key? key,
    required this.hint,
    required this.controller,
    this.required = false,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (required && (value == null || value == '')) {
          return 'Form harus diisi!';
        }
      },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black45),
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        errorStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
