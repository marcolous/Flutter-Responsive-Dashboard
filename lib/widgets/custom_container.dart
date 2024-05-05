import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    required this.height,
  });
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    double defHeight = MediaQuery.sizeOf(context).height;
    return Container(
      height: height, //defHeight * height,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: child,
    );
  }
}
