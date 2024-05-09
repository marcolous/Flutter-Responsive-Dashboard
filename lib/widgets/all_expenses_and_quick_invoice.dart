import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/quick_invoice.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AllExpenses(),
            Gap(24),
            QuickInvoice(),
          ],
        ),
      ),
    );
  }
}
