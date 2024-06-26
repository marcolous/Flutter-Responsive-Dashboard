import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.textColor,
    required this.bgColor,
    required this.text,
  });
  final int textColor, bgColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(bgColor),
            foregroundColor: Color(bgColor),
            surfaceTintColor: Color(bgColor),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            text,
            style: AppStyles.styleSemiBold18(context).copyWith(color: Color(textColor)),
          ),
        ),
      ),
    );
  }
}
