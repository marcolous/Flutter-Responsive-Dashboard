import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
    required this.title,
    required this.style,
  });
  final String title;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        title,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}
