import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/custom_user_info_text_field.dart';

class CustomerNameEmailRow extends StatelessWidget {
  const CustomerNameEmailRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomUserInfoTextField(
            title: 'Customer name', hintText: 'Type customer name'),
        Gap(16),
        CustomUserInfoTextField(
            title: 'Customer Email', hintText: 'Type customer email'),
      ],
    );
  }
}
