import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../domain/models/chart_data.dart';

class ColumnChartForSales extends StatelessWidget {
  final String title;

  const ColumnChartForSales({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      title: ChartTitle(text: title),
      legend: const Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <ChartSeries>[
        ColumnSeries<ChartData, String>(
          name: 'Unit sales',
          color: Colors.blueGrey,
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
        ColumnSeries<ChartData, String>(
          name: 'Profit Margin',
          color: Colors.amber,
          dataSource: <ChartData>[
            ChartData('A', 23),
            ChartData('B', 94),
            ChartData('C', 23),
            ChartData('D', 12),
            ChartData('E', 5),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        )
      ],
    );
  }
}

class ColumnChartForBestViews extends StatelessWidget {
  final String title;

  const ColumnChartForBestViews({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      title: ChartTitle(text: title),
      legend: const Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <ChartSeries>[
        ColumnSeries<ChartData, String>(
          name: 'Average time screen',
          color: Colors.deepPurpleAccent,
          dataSource: <ChartData>[
            ChartData('Property A', 33),
            ChartData('Property B', 23),
            ChartData('Property C', 10),
            ChartData('Property D', 59),
            ChartData('Property E', 12),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        ),
        ColumnSeries<ChartData, String>(
          name: 'Likes',
          color: Colors.pink,
          dataSource: <ChartData>[
            ChartData('Property A', 30),
            ChartData('Property B', 20),
            ChartData('Property C', 10),
            ChartData('Property D', 40),
            ChartData('Property E', 30),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        ),
        ColumnSeries<ChartData, String>(
          name: 'Total views',
          color: Colors.lightBlue,
          dataSource: <ChartData>[
            ChartData('Property A', 23),
            ChartData('Property B', 94),
            ChartData('Property C', 23),
            ChartData('Property D', 12),
            ChartData('Property E', 5),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        )
      ],
    );
  }
}
