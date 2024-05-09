import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/my_card_and_income.dart';

class DashBoardPhoneLayout extends StatelessWidget {
  const DashBoardPhoneLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          MyCardAndIncome(),
        ],
      ),
    );
  }
}
