import 'package:apart_flow_desktop/presentation/widgets/after.log/cuurency_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/local/providers/theme_settings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isToggleOn = true;

  @override
  Widget build(BuildContext context) {
    final themeSettings = Provider.of<ThemeSettings>(context);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 100),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: themeSettings.isDarkTheme
                    ? const Color(0xFF131313)
                    : const Color(0xFF565656),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Center(
                          child: Icon(
                        Icons.dark_mode_outlined,
                        size: 35,
                        color: Colors.white,
                      ))),
                  const Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dark Theme',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              'Displays the whole app in light or dark theme',
                              style: TextStyle(color: Colors.white60),
                            ),
                            SizedBox(height: 20)
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            themeSettings.switchTheme();
                            setState(() {
                              _isToggleOn = !_isToggleOn;
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: _isToggleOn
                                  ? const Color(0xFF080E3D)
                                  : const Color(0xFFD2D2D2),
                            ),
                            child: Row(
                              mainAxisAlignment: _isToggleOn
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _isToggleOn
                                        ? Colors.white
                                        : const Color.fromARGB(255, 50, 50, 50),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 100),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: themeSettings.isDarkTheme
                        ? const Color(0xFF131313)
                        : const Color(0xFF565656),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Center(
                              child: Icon(
                            Icons.currency_exchange,
                            size: 35,
                            color: Colors.white,
                          ))),
                      Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Currency',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                const Text(
                                  'Change the currency you use in the app',
                                  style: TextStyle(color: Colors.white60),
                                ),
                                const SizedBox(height: 20),
                                Wrap(
                                  children: [
                                    CurrencyButton(
                                      currencyText: 'Dollar',
                                      currencyIcon: Icons.attach_money_rounded,
                                      isActive: false,
                                    ),
                                    const SizedBox(width: 10),
                                    CurrencyButton(
                                      currencyText: 'Euro',
                                      currencyIcon: Icons.euro,
                                      isActive: false,
                                    ),
                                    const SizedBox(width: 10),
                                    CurrencyButton(
                                      currencyText: 'Yen',
                                      currencyIcon: Icons.currency_yen,
                                      isActive: false,
                                    ),
                                    const SizedBox(width: 10),
                                    CurrencyButton(
                                      currencyText: 'Ruble',
                                      currencyIcon:
                                          Icons.currency_ruble_rounded,
                                      isActive: false,
                                    ),
                                    const SizedBox(width: 10),
                                    CurrencyButton(
                                      currencyText: 'Rupee',
                                      currencyIcon: Icons.currency_rupee_sharp,
                                      isActive: false,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff070727),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Next Version',
                        style: TextStyle(
                            color: (themeSettings.isDarkTheme)
                                ? Colors.white
                                : Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
