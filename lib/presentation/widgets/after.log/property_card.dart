import 'package:apart_flow_desktop/data/local/providers/theme_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProperteyCard extends StatelessWidget {
  const ProperteyCard({super.key});

  @override
  Widget build(BuildContext context) {
    final themeSettings = Provider.of<ThemeSettings>(context);
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 80),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  height: 350,
                  decoration: const BoxDecoration(
                    color: Color(0xff070727),
                    image: DecorationImage(
                      image: AssetImage('assets/real_estate_ex.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Expanded(
                flex: 5,
                child: Stack(children: [
                  Container(
                    height: 350,
                    color: themeSettings.isDarkTheme
                        ? const Color(0xFF131313)
                        : const Color(0xFFE6E6E6),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Property name',
                            style: TextStyle(fontSize: 30),
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Row(children: [
                                    Icon(
                                      Icons.people,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text('51')
                                  ])),
                              Expanded(
                                  flex: 1,
                                  child: Row(children: [
                                    Icon(
                                      Icons.segment_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text('for rent')
                                  ])),
                              Expanded(
                                  flex: 2,
                                  child: Row(children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text('Egypt - Cairo - 6th october')
                                  ])),
                            ],
                          ),
                          const Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Row(children: [
                                    Icon(
                                      Icons.savings_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text('1,300,000 LE')
                                  ])),
                              Expanded(
                                  flex: 1,
                                  child: Row(children: [
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text('4/7/2023')
                                  ])),
                              Expanded(flex: 2, child: Center()),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            '3 Rooms | 1 living room | 1 bool | 2 bathroom | 1 kitchen  ',
                            style: TextStyle(color: Colors.amber),
                          ),
                          const SizedBox(height: 20),
                          // has capacity of 327 length as max capacity
                          Text(
                              'Description: An alert dialog (also known as a basic dialog) informs the user about situations that require acknowledgment. An alert dialog has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content. and soet dsds sdfjsf sdfnsfnsfnsd fsjnfs fs'
                                  .replaceRange(327, null, " ....")),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff070727),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/edit_property');
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.edit),
                                        SizedBox(width: 5),
                                        Text(
                                          'Edit',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  )),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff070727),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/view_property');
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove_red_eye_outlined),
                                        SizedBox(width: 5),
                                        Text(
                                          'View',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  )),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff070727),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.archive_outlined),
                                        SizedBox(width: 5),
                                        Text(
                                          'Archive',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        )),
                  ),
                ]))
          ],
        ));
  }
}

class ProperteyCardForGridView extends StatefulWidget {
  const ProperteyCardForGridView({super.key});

  @override
  State<ProperteyCardForGridView> createState() =>
      _ProperteyCardForGridViewState();
}

class _ProperteyCardForGridViewState extends State<ProperteyCardForGridView> {
  bool isHovering = false;

  bool xc = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 180,
                // color: const Color(0xff070727),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/real_estate_ex.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  color: const Color.fromARGB(255, 16, 16, 16),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: (isHovering)
                              ? const Center()
                              : const Text(
                                  'Property name',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ))),
                ),
              ),
            ],
          ),
          MouseRegion(
              onEnter: (event) {
                setState(() {
                  isHovering = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isHovering = false;
                });
              },
              child: (isHovering)
                  ? Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      color: const Color(0xD2020202),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    tooltip: 'Edit',
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/edit_property');
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    )),
                                IconButton(
                                    tooltip: 'View',
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/view_property');
                                    },
                                    icon: const Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white,
                                    )),
                                IconButton(
                                    tooltip: 'Archive',
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.archive_outlined,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Row(children: [
                                            Icon(
                                              Icons.people,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 5),
                                            Text('233',
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ])),
                                      Expanded(
                                          flex: 1,
                                          child: Row(children: [
                                            Icon(
                                              Icons.segment_outlined,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              'for rent',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ])),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Row(children: [
                                            Icon(
                                              Icons.savings_outlined,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 5),
                                            Text('1,300,000 LE',
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ])),
                                      Expanded(
                                          flex: 1,
                                          child: Row(children: [
                                            Icon(
                                              Icons.calendar_today_outlined,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              '4/7/2023',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ])),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : const Center()),
        ],
      ),
    );
  }
}
