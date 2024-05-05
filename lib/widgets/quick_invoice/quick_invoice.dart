import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/quick_invoice_latest_transactions.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      height: 566,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            Gap(16),
            QuickInvoiceLatestTransaction(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Divider(),
            ),
            Row(
              children: [
                CustomUserInfoTextField(
                    title: 'Customer name', hintText: 'Type customer name'),
                Gap(16),
                CustomUserInfoTextField(
                    title: 'Customer Email', hintText: 'Type customer email'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomUserInfoTextField extends StatelessWidget {
  const CustomUserInfoTextField({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          width: 270,
          height: 60,
          child: TextField(
            decoration: InputDecoration(
                fillColor: const Color(0xffFAFAFA),
                filled: true,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                hintText: hintText,
                hintStyle: AppStyles.styleRegular16
                    .copyWith(color: const Color(0xffAAAAAA)),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFAFAFA)),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFAFAFA)),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                labelStyle: AppStyles.styleRegular16),
          ),
        )
      ],
    );
  }
}
