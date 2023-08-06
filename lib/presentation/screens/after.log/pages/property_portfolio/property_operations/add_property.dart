import 'package:apart_flow_desktop/data/local/providers/theme_settings.dart';
import 'package:apart_flow_desktop/presentation/widgets/common/title_bar.dart';
import 'package:counter_button/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../../data/local/meta.dart';

class AddProperty extends StatefulWidget {
  final bool isSingleProperty;

  const AddProperty({super.key, required this.isSingleProperty});

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  List<String> dropDownList = <String>[
    'USA',
    'France',
    'Egypt',
    'Emirats',
    'China',
    'Russia'
  ];
  late String dropdownValue = dropDownList.first;

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  int rooms = 0;
  int kitchen = 0;
  int bedrooms = 0;
  int bathroom = 0;
  int livingroom = 0;
  int balcony = 0;
  int storageroom = 0;
  int laundryroom = 0;
  int swimmingpool = 0;

  @override
  Widget build(BuildContext context) {
    final themeSettings = Provider.of<ThemeSettings>(context);
    List<Widget> counters = [
      Container(
        decoration: BoxDecoration(
          color: const Color(0xff070727),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('Rooms'),
              const SizedBox(height: 10),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    if (!val.isNegative) {
                      rooms = val;
                    }
                  });
                },
                count: rooms,
                countColor: Colors.white,
                buttonColor: Colors.white,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: const Color(0xff070727),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('kitchen'),
              const SizedBox(height: 10),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    if (!val.isNegative) {
                      kitchen = val;
                    }
                  });
                },
                count: kitchen,
                countColor: Colors.white,
                buttonColor: Colors.white,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: const Color(0xff070727),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('bedrooms'),
              const SizedBox(height: 10),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    if (!val.isNegative) {
                      bedrooms = val;
                    }
                  });
                },
                count: bedrooms,
                countColor: Colors.white,
                buttonColor: Colors.white,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: const Color(0xff070727),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('Bathrooms'),
              const SizedBox(height: 10),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    if (!val.isNegative) {
                      bathroom = val;
                    }
                  });
                },
                count: bathroom,
                countColor: Colors.white,
                buttonColor: Colors.white,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: const Color(0xff070727),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('Living Room'),
              const SizedBox(height: 10),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    if (!val.isNegative) {
                      livingroom = val;
                    }
                  });
                },
                count: livingroom,
                countColor: Colors.white,
                buttonColor: Colors.white,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: const Color(0xff070727),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('Balacony'),
              const SizedBox(height: 10),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    if (!val.isNegative) {
                      balcony = val;
                    }
                  });
                },
                count: balcony,
                countColor: Colors.white,
                buttonColor: Colors.white,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: const Color(0xff070727),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('Storage Room'),
              const SizedBox(height: 10),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    if (!val.isNegative) {
                      storageroom = val;
                    }
                  });
                },
                count: storageroom,
                countColor: Colors.white,
                buttonColor: Colors.white,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: const Color(0xff070727),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('Laundry Room'),
              const SizedBox(height: 10),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    if (!val.isNegative) {
                      laundryroom = val;
                    }
                  });
                },
                count: laundryroom,
                countColor: Colors.white,
                buttonColor: Colors.white,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: const Color(0xff070727),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('Swimming Pool'),
              const SizedBox(height: 10),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    if (!val.isNegative) {
                      swimmingpool = val;
                    }
                  });
                },
                count: swimmingpool,
                countColor: Colors.white,
                buttonColor: Colors.white,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    ];
    return WindowTitleBar(
      isLightTheme: !themeSettings.isDarkTheme,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo/logo_semi_light.png'),
                        const SizedBox(width: 10),
                        Text(
                          meta.appName,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const Text('Desktop app | Redfin company version'),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
              const Divider(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Pictures',
                    style: TextStyle(fontSize: 20, color: Colors.amber),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Wrap(
                      direction: Axis.horizontal,
                      runSpacing: 18.0,
                      spacing: 18.0,
                      runAlignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: counters,
                    );
                  },
                ),
              ),
              const Divider(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 20, color: Colors.amber),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF270707),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Icon(Icons.cancel),
                              SizedBox(width: 5),
                              Text(
                                'cancel',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
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
                              Icon(Icons.save),
                              SizedBox(width: 5),
                              Text(
                                'save',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
