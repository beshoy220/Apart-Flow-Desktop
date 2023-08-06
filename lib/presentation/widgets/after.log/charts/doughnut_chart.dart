import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../domain/models/chart_data.dart';

class DroughuntChartForViewersRegion extends StatelessWidget {
  final String tite;
  const DroughuntChartForViewersRegion({super.key, required this.tite});

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: tite),
      legend: const Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(enable: true, canShowMarker: true),
      series: <CircularSeries>[
        DoughnutSeries<ChartData, String>(
          dataSource: <ChartData>[
            ChartData('Egypt', 23),
            ChartData('USA', 12),
            ChartData('China', 37),
            ChartData('India', 14),
            ChartData('Turkey', 14),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
        )
      ],
    );
  }
}
