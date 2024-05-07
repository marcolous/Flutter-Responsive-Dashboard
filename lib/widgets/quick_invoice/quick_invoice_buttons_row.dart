import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_elevated_button.dart';

class QuickInvoiceButtonsRow extends StatelessWidget {
  const QuickInvoiceButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomElevatedButton(
            textColor: 0xff4EB7F2,
            bgColor: 0xffFAFAFA,
            text: 'Add more details'),
        Gap(16),
        CustomElevatedButton(
            textColor: 0xffFFFFFF, bgColor: 0xff4EB7F2, text: 'Send Money'),
      ],
    );
  }
}
