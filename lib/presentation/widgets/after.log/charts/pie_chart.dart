import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../domain/models/chart_data.dart';

class PieChartForBestSalesMan extends StatelessWidget {
  final String title;
  const PieChartForBestSalesMan({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: title),
      legend: const Legend(isVisible: true, toggleSeriesVisibility: true),
      tooltipBehavior: TooltipBehavior(enable: true, canShowMarker: true),
      series: <CircularSeries>[
        PieSeries<ChartData, String>(
          dataSource: <ChartData>[
            ChartData('John', 23),
            ChartData('Yousef', 12),
            ChartData('Nikol', 37),
            ChartData('Emma', 14),
            ChartData('dany', 12),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        )
      ],
    );
  }
}

class PieChartForMarketMonoply extends StatelessWidget {
  final String title;
  const PieChartForMarketMonoply({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: title),
      legend: const Legend(isVisible: true, toggleSeriesVisibility: true),
      tooltipBehavior: TooltipBehavior(enable: true, canShowMarker: true),
      series: <CircularSeries>[
        PieSeries<ChartData, String>(
          dataSource: <ChartData>[
            ChartData('X corp company', 23),
            ChartData('EXC for real estate', 12),
            ChartData('33 Property company', 37),
            ChartData('Al Mokal', 14),
            ChartData('Ap real estate', 14),
            ChartData('X corp company', 23),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        )
      ],
    );
  }
}
