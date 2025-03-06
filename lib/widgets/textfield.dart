import 'package:flutter/material.dart';

class SpartanTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  const SpartanTextField({
    super.key,
    required this.labelText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          focusColor: Colors.blueAccent.shade400,
          fillColor: Colors.blueAccent.shade400,

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          labelText: labelText,
        ),
      ),
    );
  }
}
