import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final moveTo;

  const CustomElevatedButton({required this.text, required this.moveTo});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: moveTo,
      child: Text("$text"),
    );
  }
}
