import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  final String hint;
  final icon;
  const TextFieldItem({super.key, required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.grey.shade100,
      ),
      padding: const EdgeInsets.only(left: 20),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(
            icon,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}
