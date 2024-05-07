import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/income/income_header.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(20),
      height: 300,
      child: Column(
        children: [
          IncomeHeader(),
        ],
      ),
    );
  }
}
