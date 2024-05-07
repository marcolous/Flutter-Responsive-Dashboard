import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/income/custom_income_list_tile.dart';
import 'package:responsive_dashboard/widgets/income/income_chart.dart';
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
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 2, child: IncomeChart()),
                Expanded(
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
