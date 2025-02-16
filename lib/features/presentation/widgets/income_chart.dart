import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            }),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius: activeIndex == 0 ? 45 : 35,
              value: 40,
              color: const Color(0xff208b7c),
              showTitle: false),
          PieChartSectionData(
              radius: activeIndex == 1 ? 45 : 35,
              value: 25,
              color: const Color(0xff4db7f2),
              showTitle: false),
          PieChartSectionData(
              radius: activeIndex == 2 ? 45 : 35,
              value: 20,
              color: const Color(0xff064060),
              showTitle: false),
          PieChartSectionData(
              radius: activeIndex == 3 ? 45 : 35,
              value: 22,
              color: const Color(0xffe2decd),
              showTitle: false)
        ]);
  }
}
