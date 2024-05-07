import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomIncomeListTile extends StatelessWidget {
  const CustomIncomeListTile({
    super.key,
    required this.text,
    required this.percent,
    required this.backgroundColor,
  });
  final String text, percent;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: 8,
      ),
      title: Text(
        text,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        percent,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}