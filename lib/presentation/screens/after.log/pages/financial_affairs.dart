import 'package:apart_flow_desktop/data/local/meta.dart';
import 'package:apart_flow_desktop/data/local/providers/theme_settings.dart';
import 'package:apart_flow_desktop/presentation/widgets/after.log/calculators/compound_interest_calculator.dart';
import 'package:apart_flow_desktop/presentation/widgets/after.log/calculators/mortgage_calculator.dart';
import 'package:apart_flow_desktop/presentation/widgets/after.log/calculators/simple_interest_calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FinancialAffairs extends StatelessWidget {
  const FinancialAffairs({super.key});

  @override
  Widget build(BuildContext context) {
    final themeSettings = Provider.of<ThemeSettings>(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Financial Affairs',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: themeSettings.isDarkTheme
                              ? const Color(0xFF070707)
                              : const Color(0xFFE6E6E6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Sold Inventory Worth',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Container(
                              height: 125,
                              width: 125,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1250),
                                  border: Border.all(
                                      width: 2, color: Colors.amber)),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '\$1.2M',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                          const SizedBox(height: 20),
                          Text(
                              'This number express the total pure income made on ${meta.appName} since the company started'),
                          const SizedBox(height: 20),
                        ],
                      )),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: themeSettings.isDarkTheme
                              ? const Color(0xFF070707)
                              : const Color(0xFFE6E6E6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Rentable Inventory',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Container(
                              height: 125,
                              width: 125,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1250),
                                  border: Border.all(
                                      width: 2, color: Colors.amber)),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '\$502k',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                          const SizedBox(height: 20),
                          const Text(
                              'This number express the rentable properties that is collected each month \n.'),
                          const SizedBox(height: 20),
                        ],
                      )),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: themeSettings.isDarkTheme
                              ? const Color(0xFF070707)
                              : const Color(0xFFE6E6E6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Inventory Worth',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Container(
                              height: 125,
                              width: 125,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1250),
                                  border: Border.all(
                                      width: 2, color: Colors.amber)),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '\$300.7M',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                          const SizedBox(height: 20),
                          const Text(
                              'This number express the total inventory worth money to determine expected income in the future'),
                          const SizedBox(height: 20),
                        ],
                      )),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: themeSettings.isDarkTheme
                              ? const Color(0xFF070707)
                              : const Color(0xFFE6E6E6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Expected Due This Month',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Container(
                              height: 125,
                              width: 125,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1250),
                                  border: Border.all(
                                      width: 2, color: Colors.amber)),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '\$200.4k',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                          const SizedBox(height: 20),
                          const Text(
                              'This number express the expected collected due for this month only from clients'),
                          const SizedBox(height: 20),
                        ],
                      )),
                )),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       Expanded(
          //           child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //             padding: const EdgeInsets.all(10),
          //             decoration: BoxDecoration(
          //                 color:  themeSettings.isDarkTheme
          //                   ? const Color(0xFF070707)
          //                   : const Color(0xFFE6E6E6),
          //                 borderRadius: BorderRadius.circular(20)),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 const Text(
          //                   'Commission Spent',
          //                   style: TextStyle(
          //                       fontSize: 20, fontWeight: FontWeight.bold),
          //                 ),
          //                 const SizedBox(height: 20),
          //                 Container(
          //                     height: 125,
          //                     width: 125,
          //                     decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(1250),
          //                         border: Border.all(
          //                             width: 2, color: Colors.amber)),
          //                     child: const Center(
          //                         child: Padding(
          //                       padding: EdgeInsets.all(8.0),
          //                       child: Text(
          //                         '\$124.9k',
          //                         style: TextStyle(
          //                             color: Colors.amber,
          //                             fontSize: 20,
          //                             fontWeight: FontWeight.bold),
          //                       ),
          //                     ))),
          //                 const SizedBox(height: 20),
          //                 const Text(
          //                     'This number express the total commissions spent on the salesmen for selling inventory'),
          //                 const SizedBox(height: 20),
          //               ],
          //             )),
          //       )),
          //       const Expanded(child: Center()),
          //       const Expanded(child: Center()),
          //       const Expanded(child: Center()),
          //     ],
          //   ),
          // ),
          const Divider(),
          const Center(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Calculators',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: themeSettings.isDarkTheme
                              ? const Color(0xFF070707)
                              : const Color(0xFFE6E6E6),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          Text('Mortgage Calculator'),
                          MortgageCalculator(),
                        ],
                      ),
                    ),
                    Container(
                        height: 305,
                        decoration: BoxDecoration(
                            color: themeSettings.isDarkTheme
                                ? const Color(0xFF070707)
                                : const Color(0xFFE6E6E6),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Mortgage Calculator'),
                                  const SizedBox(height: 20),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xff070727),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Next Version',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: themeSettings.isDarkTheme
                          ? const Color(0xFF070707)
                          : const Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(child: Center()),
                          const Expanded(
                              child: Center(child: Text('Simple Interest'))),
                          Expanded(
                              child: IconButton(
                                  tooltip:
                                      'Simple interest is the amount of interest calculated only on the principal \namount. It does not compound, meaning the interest earned is not added \nto the principal to calculate new interest in the next period.',
                                  onPressed: () {},
                                  icon: const Icon(Icons.priority_high_sharp))),
                        ],
                      ),
                      const SimpleInterestCalculator()
                    ],
                  ),
                ),
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: themeSettings.isDarkTheme
                          ? const Color(0xFF070707)
                          : const Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(child: Center()),
                          const Expanded(
                              child: Center(child: Text('Compound Interest'))),
                          Expanded(
                              child: IconButton(
                                  tooltip:
                                      'Compound interest is interest calculated on the initial principal plus accumulated\n interest of previous periods of a deposit or loan.',
                                  onPressed: () {},
                                  icon: const Icon(Icons.priority_high_sharp))),
                        ],
                      ),
                      const CompoundInterestCalculator()
                    ],
                  ),
                ),
              )),
              const Expanded(child: Center()),
            ],
          )
        ],
      ),
    );
  }
}
