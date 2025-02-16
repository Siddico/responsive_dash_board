import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
            titlePositionPercentageOffset: activeIndex == 0 ? 1.35 : null,
            radius: activeIndex == 0 ? 45 : 35,
            title: activeIndex == 0 ? 'Design Service' : '40%',
            color: const Color(0xff208b7c),
            titleStyle: Styles.styleBold16(context)
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
            value: 40,
            // showTitle: false
          ),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 1 ? 2.5 : null,
              radius: activeIndex == 1 ? 45 : 35,
              title: activeIndex == 1 ? 'Design Product' : "25%",
              color: const Color(0xff4db7f2),
              titleStyle: Styles.styleBold16(context)
                  .copyWith(color: activeIndex == 1 ? null : Colors.white),
              value: 25
              // showTitle: false
              ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.45 : null,

            radius: activeIndex == 2 ? 45 : 35,
            title: activeIndex == 2 ? 'Product Royalti' : "20%",
            value: 20,
            color: const Color(0xff064060),
            titleStyle: Styles.styleBold16(context)
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
            // showTitle: false
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,

            radius: activeIndex == 3 ? 45 : 35,
            title: activeIndex == 3 ? 'Others' : "22%",
            value: 22,
            color: const Color(0xffe2decd),
            titleStyle: Styles.styleBold16(context)
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
            // showTitle: false
          )
        ]);
  }
}
