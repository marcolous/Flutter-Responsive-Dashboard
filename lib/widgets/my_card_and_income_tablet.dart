import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/income/income_tablet_chart.dart';
import 'package:responsive_dashboard/widgets/my_card/my_card_and_transaction_history.dart';

class MyCardAndIncomeTablet extends StatelessWidget {
  const MyCardAndIncomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      //padding: EdgeInsets.only(top: 40),
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          MyCardAndTransactionHistory(),
          Gap(10),
          IncomeTabletChart(),
        ],
      ),
    );
  }
}
