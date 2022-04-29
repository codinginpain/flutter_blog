import 'package:flutter/material.dart';

class CustomTextArea extends StatelessWidget {
  final String hint;
  final fnValidator;
  final String? contentValue;

  const CustomTextArea(
      {required this.hint, required this.fnValidator, this.contentValue});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        initialValue: contentValue ?? "",
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
