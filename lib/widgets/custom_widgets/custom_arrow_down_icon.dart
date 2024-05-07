import 'package:flutter/material.dart';

class CustomArrowDownIcon extends StatelessWidget {
  const CustomArrowDownIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.5708,
      child: const Icon(Icons.arrow_back_ios_new_rounded,
          color: Color(0xff064061)),
    );
  }
}
