import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../domain/models/chart_data.dart';

class MyScatterLineChart extends StatelessWidget {
  final String title;
  const MyScatterLineChart({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      title: ChartTitle(text: title),
      legend: const Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <ChartSeries>[
        ScatterSeries<ChartData, String>(
          dataSource: <ChartData>[
            ChartData('A', 30),
            ChartData('B', 20),
            ChartData('C', 10),
            ChartData('D', 40),
            ChartData('E', 30),
            ChartData('f', 20),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        ),
        ScatterSeries<ChartData, String>(
          dataSource: <ChartData>[
            ChartData('A', 90),
            ChartData('B', 37),
            ChartData('C', 2),
            ChartData('D', 23),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        )
      ],
    );
  }
}
