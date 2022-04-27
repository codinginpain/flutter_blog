import 'package:flutter/material.dart';

class CustomTextArea extends StatelessWidget {
  final String hint;
  final fnValidator;

  const CustomTextArea({required this.hint, required this.fnValidator});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        validator: fnValidator,
        maxLines: 10,
        decoration: InputDecoration(
          hintText: "$hint",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
