import 'package:apart_flow_desktop/data/local/meta.dart';
import 'package:apart_flow_desktop/presentation/widgets/after.log/charts/column_chart.dart';
import 'package:apart_flow_desktop/presentation/widgets/after.log/charts/doughnut_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../data/local/providers/theme_settings.dart';
import '../../../widgets/after.log/charts/line_chart.dart';
import '../../../widgets/after.log/charts/pie_chart.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  StatisticsState createState() => StatisticsState();
}

class StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    final themeSettings = Provider.of<ThemeSettings>(context);

    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            'Statistics',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 18, 18),
          child: Text(
            'The Statistics section provides valuable insights into your company\'s performance through the analysis of five key metrics. These metrics include sales, views, inventory status, market trends, and competitors analysis. By leveraging these metrics, you can gain a deeper understanding of your company\'s performance and make informed decisions based on accurate data analysis. ',
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(),
        ),
        Row(
          children: [
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: themeSettings.isDarkTheme
                              ? const Color(0xBB010101)
                              : const Color(0x00FFFFFF)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                        child: Center(
                            child: Column(
                          children: [
                            ColumnChartForSales(title: 'Sales of current year'),
                            Text(
                                'Since sales are a good indicator of your company\'s health, We have included two key metrics: unit sales, which represents the number of properties sold, and profit margin, which represents the net profit.')
                          ],
                        )),
                      )),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: themeSettings.isDarkTheme
                              ? const Color(0xBB010101)
                              : const Color(0x00FFFFFF)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                        child: Center(
                          child: Column(
                            children: [
                              PieChartForBestSalesMan(
                                title: 'Best salesmen',
                              ),
                              Text(
                                  'This is best 5 salesmen in the company and it containes only top 5')
                            ],
                          ),
                        ),
                      )),
                ))
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(),
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: themeSettings.isDarkTheme
                              ? const Color(0xBB010101)
                              : const Color(0x00FFFFFF)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                        child: Center(
                            child: Column(
                          children: [
                            DroughuntChartForViewersRegion(
                                tite: 'Viewers region'),
                            Text(
                                'This section to determine the state/goverment or countery of viewers')
                          ],
                        )),
                      )),
                )),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: themeSettings.isDarkTheme
                              ? const Color(0xBB010101)
                              : const Color(0x00FFFFFF)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                        child: Center(
                            child: Column(
                          children: [
                            ColumnChartForBestViews(
                                title: 'Best Viewed Properties'),
                            Text(
                                'Here you can determine where is the most demaned and what attract viewers by using the 3 metrics: average time screen (time taken by the user to view your property), likes and total views ')
                          ],
                        )),
                      )),
                ))
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: themeSettings.isDarkTheme
                      ? const Color(0xBB010101)
                      : const Color(0x00FFFFFF)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: Center(
                  child: Column(
                    children: [
                      LineChartForInvetory(
                        title: 'Inventory status view',
                      ),
                      SizedBox(height: 10),
                      Text(
                          'With our inventory tracking feature, you can easily keep tabs on your properties and their status. You\'ll have a clear view of whether a property is active and available for viewing by potential buyers or renters, or if it has already been sold. Additionally, you can monitor properties that are under due as well as those that are being rented. And for archived properties.'),
                      SizedBox(height: 10),
                      Text(''),
                    ],
                  ),
                ),
              )),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: themeSettings.isDarkTheme
                      ? const Color(0xBB010101)
                      : const Color(0x00FFFFFF)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: Center(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Market Trends',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: Text(
                            'The "Market Trends" section is a valuable resource that provides companies with insights into current market trends. The data contained within this section is variable and changes over time, allowing users to stay up-to-date on the latest trends and demands of the market. This feature is an essential tool for companies to make informed decisions about their real estate needs based on current market conditions and increase sales ',
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(18),
                              child: LineChartForMarketTrends(
                                title: 'Dublex sales',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(18),
                              child: LineChartForMarketTrends(
                                title: 'Rent properties sales',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(18),
                              child: LineChartForMarketTrends(
                                title: 'Above 1 million dollar price sales',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: themeSettings.isDarkTheme
                      ? const Color(0xBB010101)
                      : const Color(0x00FFFFFF)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Competitors Analysis',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PieChartForMarketMonoply(
                              title:
                                  'Companies that Monapoly Apart Flow By Inventory Size',
                            ),
                            PieChartForMarketMonoply(
                              title: 'Companies Of Best Sales And Deals',
                            ),
                            PieChartForMarketMonoply(
                              title: 'Companies Of Hieghest Rent Property Rate',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(''),
                    ],
                  ),
                ),
              )),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(),
        ),
        const SizedBox(
          height: 50,
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 80.0),
          child: Text(
              'All data provided by ${meta.appName} so you can see your compan\'s health and see if you are making progress. For more specific data you can contact our team by email: apartflow@gmail.com'),
        )),
        const SizedBox(height: 30)
      ]),
    ));
  }
}
