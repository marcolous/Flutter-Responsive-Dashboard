import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/arrow_down_icon.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16,
              ),
              Gap(18),
              ArrowDownIcon(),
            ],
          ),
        ),
      ],
    );
  }
}
