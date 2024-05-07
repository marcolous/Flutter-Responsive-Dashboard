import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          color: const Color(0xff208CC8),
          showTitle: false,
          radius: activeIndex == 0 ? 50 : 40,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xff4EB7F2),
          showTitle: false,
          radius: activeIndex == 1 ? 50 : 40,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0xff064061),
          showTitle: false,
          radius: activeIndex == 2 ? 50 : 40,
        ),
        PieChartSectionData(
          value: 15,
          color: const Color(0xffE2DECD),
          showTitle: false,
          radius: activeIndex == 3 ? 50 : 40,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }
}
