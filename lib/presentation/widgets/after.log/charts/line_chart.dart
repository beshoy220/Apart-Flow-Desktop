import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../domain/models/chart_data.dart';

class LineChartForInvetory extends StatelessWidget {
  final String title;

  const LineChartForInvetory({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      title: ChartTitle(text: title),
      legend: const Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <ChartSeries>[
        LineSeries<ChartData, String>(
          name: 'Active Inventory',
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
        LineSeries<ChartData, String>(
          name: 'Sold Inventory',
          dataSource: <ChartData>[
            ChartData('A', 23),
            ChartData('B', 0),
            ChartData('C', 12),
            ChartData('D', 48),
            ChartData('E', 47),
            ChartData('f', 12),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        ),
        LineSeries<ChartData, String>(
          name: 'Under Due Inventory',
          dataSource: <ChartData>[
            ChartData('A', 12),
            ChartData('B', 2),
            ChartData('C', 48),
            ChartData('D', 12),
            ChartData('E', 12),
            ChartData('f', 44),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        ),
        LineSeries<ChartData, String>(
          name: 'Rent Inventory',
          dataSource: <ChartData>[
            ChartData('A', 12),
            ChartData('B', 10),
            ChartData('C', 12),
            ChartData('D', 21),
            ChartData('E', 0),
            ChartData('f', 30),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        ),
        LineSeries<ChartData, String>(
          name: 'Archived Inventory',
          dataSource: <ChartData>[
            ChartData('A', 14),
            ChartData('B', 0),
            ChartData('C', 12),
            ChartData('D', 21),
            ChartData('E', 3),
            ChartData('f', 44),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        ),
      ],
    );
  }
}

class LineChartForMarketTrends extends StatelessWidget {
  final String title;

  const LineChartForMarketTrends({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      title: ChartTitle(text: title),
      // legend: const Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <ChartSeries>[
        LineSeries<ChartData, String>(
          name: 'Active Inventory',
          dataSource: <ChartData>[
            ChartData('A', 30),
            ChartData('B', 20),
            ChartData('C', 10),
            ChartData('D', 40),
            ChartData('E', 55),
            ChartData('f', 60),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        ),
      ],
    );
  }
}
