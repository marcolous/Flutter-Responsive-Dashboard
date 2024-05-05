import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'All Expenses',
            style: AppStyles.styleSemiBold20,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              children: [
                const Text(
                  'Monthly',
                  style: AppStyles.styleMedium16,
                ),
                const Gap(18),
                Transform.rotate(
                  angle: -1.5708,
                  child: const Icon(Icons.arrow_back_ios_new_rounded,
                      color: Color(0xff064061)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
