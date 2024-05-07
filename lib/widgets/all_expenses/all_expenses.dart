import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expenses_body.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      height: 300,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesHeader(),
            Gap(16),
            AllExpensesBody(),
          ],
        ),
      ),
    );
  }
}
