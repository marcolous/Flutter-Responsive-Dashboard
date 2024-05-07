import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_arrow_down_icon.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/custom_user_info_text_field.dart';

class ItemNameAmountRow extends StatelessWidget {
  const ItemNameAmountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomUserInfoTextField(
            title: 'Item name', hintText: 'Type customer name'),
        Gap(16),
        CustomUserInfoTextField(
            title: 'Item mount',
            hintText: 'USD',
            suffixIcon: CustomArrowDownIcon()),
      ],
    );
  }
}
