import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_arrow_down_icon.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Income',
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
          child:  Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16,
              ),
              const Gap(18),
              const CustomArrowDownIcon(),
            ],
          ),
        ),
      ],
    );
  }
}
