import 'package:apart_flow_desktop/data/local/providers/theme_settings.dart';
import 'package:apart_flow_desktop/presentation/widgets/after.log/icons_mean.dart';
import 'package:apart_flow_desktop/presentation/widgets/after.log/property_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PropertyPortfolio extends StatefulWidget {
  const PropertyPortfolio({super.key});

  @override
  State<PropertyPortfolio> createState() => _PropertyPortfolioState();
}

class _PropertyPortfolioState extends State<PropertyPortfolio> {
  final TextEditingController _controller1 = TextEditingController();

  bool isGrid = false;
  bool showIconMeanings = false;
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final themeSettings = Provider.of<ThemeSettings>(context);
    double sizeOfScreen = MediaQuery.of(context).size.width;
    debugPrint(sizeOfScreen.toString());
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff070727),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.display_settings),
                          SizedBox(width: 10),
                          Text('Filter'),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _controller1,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText:
                                'Search with name, views, cost, place ...etc'),
                      ),
                    )),
              ],
            ),
          ),
          // const IconsMean(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Row(children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              showIconMeanings = false;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(Icons.home_work_outlined,
                                  color: themeSettings.isDarkTheme
                                      ? Colors.white
                                      : Colors.black),
                              const SizedBox(width: 5),
                              Text(
                                'All Properties',
                                style: TextStyle(
                                    color: themeSettings.isDarkTheme
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ],
                          )),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              showIconMeanings = false;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(Icons.archive_outlined,
                                  color: themeSettings.isDarkTheme
                                      ? Colors.white
                                      : Colors.black),
                              const SizedBox(width: 5),
                              Text(
                                'Archived',
                                style: TextStyle(
                                    color: themeSettings.isDarkTheme
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ],
                          )),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              showIconMeanings = true;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(Icons.interests_outlined,
                                  color: themeSettings.isDarkTheme
                                      ? Colors.white
                                      : Colors.black),
                              const SizedBox(width: 5),
                              Text(
                                'Icons Meanings',
                                style: TextStyle(
                                    color: themeSettings.isDarkTheme
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ],
                          )),
                    ])),
                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  isGrid = !isGrid;
                                });
                              },
                              icon: Icon(
                                  isGrid ? Icons.grid_on_sharp : Icons.list))
                        ]))
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
          showIconMeanings
              ? IconsMean()
              : isGrid
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return const ProperteyCard();
                      },
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: sizeOfScreen > 1505.0 ? 4 : 3,
                        ),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return const ProperteyCardForGridView();
                        },
                      ),
                    )

          // Expanded(flex: 10, child: ProperteyCard()),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
  }
}
