import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card/my_card_and_transaction_history.dart';

class MyCardAndIncome extends StatelessWidget {
  const MyCardAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          MyCardAndTransactionHistory(),
        ],
      ),
    );
  }
}
