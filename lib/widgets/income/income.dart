import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/income/income_chart.dart';
import 'package:responsive_dashboard/widgets/income/income_header.dart';
import 'package:responsive_dashboard/widgets/income/income_listtile_list.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.sizeOf(context).width;
    return mediaWidth >= SizeConfig.desktop && mediaWidth <= 1500
        ? const CustomContainer(
            padding: EdgeInsets.all(20),
            height: 500,
            child: Column(
              children: [
                IncomeHeader(),
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeList())
              ],
            ),
          )
        : const CustomContainer(
            padding: EdgeInsets.all(20),
            height: 300,
            child: Column(
              children: [
                IncomeHeader(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: IncomeChart()),
                      IncomeList()
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
