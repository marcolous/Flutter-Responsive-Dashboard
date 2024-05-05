import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/customer_name_email_row.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/item_name_amount_row.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/quick_invoice_buttons_row.dart';
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
            Divider(
              height: 48,
              color: Color(0xffF1F1F1),
            ),
            CustomerNameEmailRow(),
            Gap(24),
            ItemNameAmountRow(),
            Gap(24),
            QuickInvoiceButtonsRow()
          ],
        ),
      ),
    );
  }
}
