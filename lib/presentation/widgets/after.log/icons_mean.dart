import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconsMean extends StatelessWidget {
  IconsMean({super.key});

  List content = [
    [
      Icons.people,
      '   The total views icon',
      ' The icon just refers to how many people viewed the property and read some data like description\n\n\n   This can be helpful in :\n\n     - Define the demand of the market\n     - Making a view of most potential properties '
    ],
    [
      Icons.segment_outlined,
      '   Status of property icon',
      ' The stutas of the propety can be one of the following :\n\n   - For Sale\n   - Sold\n   - For Rent\n   - Due (The client still pay monthly for the property)'
    ],
    [Icons.location_on_outlined, '   The location icon', ' explain of icon'],
    [Icons.savings_outlined, '   The price icon', ' explain of icon'],
    [Icons.calendar_today_outlined, '   The date icon', ' explain of icon']
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: ExpansionTile(
            title: Row(
              children: [Icon(content[index][0]), Text(content[index][1])],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [Text(content[index][2])],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        );
      },
    );
  }
}
