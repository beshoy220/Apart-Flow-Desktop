import 'package:apart_flow_desktop/data/local/providers/theme_settings.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/error_handler_page.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/about.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/financial_affairs.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/property_portfolio/property_portfolio.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/sales_team/sales_team.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/settings.dart';
import 'package:apart_flow_desktop/presentation/screens/after.log/pages/statistics.dart';
import 'package:apart_flow_desktop/presentation/widgets/after.log/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../data/local/meta.dart';
import '../../widgets/common/title_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  List buttons = [
    [Icons.apartment_rounded, 'Property Portfolio'],
    [Icons.attach_money_rounded, 'Financial Affairs'],
    [Icons.bar_chart_sharp, 'Statistics'],
    [Icons.person, 'Sales Teams'],
    [Icons.chat_bubble_outline, 'Chats'],
    [Icons.auto_awesome, 'Get clients'],
    [Icons.settings, 'Settings'],
    [Icons.info_outlined, 'About'],
  ];

  List pages = [
    const PropertyPortfolio(),
    const FinancialAffairs(),
    const Statistics(),
    const SalesTeam(),
    ErrorHandlerPage(message: 'NEXT VERSION FEATURE OF CHATS'),
    ErrorHandlerPage(message: 'NEXT VERSION FEATURE OF GET CLIENTS'),
    const Settings(),
    const About(),
  ];
  @override
  Widget build(BuildContext context) {
    final themeSettings = Provider.of<ThemeSettings>(context);
    return WindowTitleBar(
      isLightTheme: !themeSettings.isDarkTheme,
      child: Scaffold(
          body: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                flex: 1,
                child: Container(
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    color: (themeSettings.isDarkTheme)
                        ? const Color(0xFF131313)
                        : Color.fromARGB(255, 215, 215, 215),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                    //     spreadRadius: 5,
                    //     blurRadius: 7,
                    //     offset: Offset(0, 10),
                    //   ),
                    // ],
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Transform.scale(
                                  scale: 1.1,
                                  child: themeSettings.isDarkTheme
                                      ? Image.asset(
                                          'assets/logo/logo_semi_light.png')
                                      : Image.asset(
                                          'assets/logo/logo_full_dark.png')),
                              const SizedBox(width: 10),
                              Text(
                                meta.appName,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text('Desktop app | Redfin company version'),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: buttons.length,
                          itemBuilder: (BuildContext context, int index) {
                            return (index == 4 || index == 5)
                                ? Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 20),
                                        child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                pageIndex = index;
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  themeSettings.isDarkTheme
                                                      ? const Color(0x75565656)
                                                      : const Color(0xFF565656),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(18),
                                              child: Row(
                                                children: [
                                                  Icon(buttons[index][0]),
                                                  const SizedBox(width: 5),
                                                  Text(buttons[index][1]),
                                                ],
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff070727),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Next Version',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 20),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            pageIndex = index;
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              themeSettings.isDarkTheme
                                                  ? const Color(0x75565656)
                                                  : const Color(0xFF565656),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(18),
                                          child: Row(
                                            children: [
                                              Icon(buttons[index][0]),
                                              const SizedBox(width: 5),
                                              Text(buttons[index][1]),
                                            ],
                                          ),
                                        )),
                                  );
                          },
                        ),
                        Text(meta.version)
                      ],
                    ),
                  ),
                )),
            Expanded(flex: 3, child: pages[pageIndex])
          ]),
          floatingActionButton: pageIndex == 0
              ? FloatingActionButton.extended(
                  onPressed: () {
                    dialogForAddPropety(context);
                  },
                  label: const Text(
                    'Add Property',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  backgroundColor: const Color(0xff070727),
                )
              : const Center()),
    );
  }
}
