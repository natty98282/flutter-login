import 'package:flutter/material.dart';
import 'package:login_ui/utils/colors.dart';

class ButtonItem extends StatelessWidget {
  final String buttonname;
  const ButtonItem({super.key, required this.buttonname});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [orangeColor, orangeLightColor],
                end: Alignment.centerLeft,
                begin: Alignment.centerRight),
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            buttonname,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
