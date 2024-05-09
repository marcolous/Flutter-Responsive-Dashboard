import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income/custom_income_list_tile.dart';

class IncomeList extends StatelessWidget {
  const IncomeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 3,
      child: Column(
        children: [
          CustomIncomeListTile(
            text: 'Design service',
            percent: '40%',
            backgroundColor: Color(0xff208CC8),
          ),
          CustomIncomeListTile(
            text: 'Design product',
            percent: '25%',
            backgroundColor: Color(0xff4EB7F2),
          ),
          CustomIncomeListTile(
            text: 'Product royalti',
            percent: '20%',
            backgroundColor: Color(0xff064061),
          ),
          CustomIncomeListTile(
            text: 'Design service',
            percent: '15%',
            backgroundColor: Color(0xffE2DECD),
          ),
        ],
      ),
    );
  }
}
