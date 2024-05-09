import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/income/income_chart.dart';
import 'package:responsive_dashboard/widgets/income/income_header.dart';
import 'package:responsive_dashboard/widgets/income/income_listtile_list.dart';

class IncomeTabletChart extends StatelessWidget {
  const IncomeTabletChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(20),
      height: 500,
      child: Column(
        children: [
          IncomeHeader(),
          Expanded(child: IncomeChart()),
          Flexible(child: IncomeList())
        ],
      ),
    );
  }
}
