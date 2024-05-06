import 'package:flutter/material.dart';

class CustomAnimatedDotIndicator extends StatelessWidget {
  const CustomAnimatedDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 6),
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.blue : const Color(0xffE7E7E7),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
