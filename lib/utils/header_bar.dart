import 'package:flutter/material.dart';
import 'package:login_ui/utils/colors.dart';

class HeaderBar extends StatelessWidget {
  final String text;
  const HeaderBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              orangeColor,
              orangeLightColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(80))),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 20,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          Center(
            child: Image.asset(
              'asset/images/logo.png',
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
