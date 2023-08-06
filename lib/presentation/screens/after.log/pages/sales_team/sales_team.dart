import 'package:apart_flow_desktop/presentation/widgets/after.log/sales_team_tile.dart';
import 'package:flutter/material.dart';

class SalesTeam extends StatelessWidget {
  const SalesTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Sales Team',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Expanded(child: Center()),
              const Expanded(child: Center()),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff070727),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/add_salesman');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Add salesman',
                          style: TextStyle(fontSize: 18),
                        ),
                      )),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: Column(
              children: [
                const Divider(),
                const Row(
                  children: [
                    Expanded(
                        flex: 1, child: Icon(Icons.account_circle_rounded)),
                    Expanded(flex: 1, child: Center(child: Text('Name'))),
                    Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text('Data'),
                        )),
                    Expanded(flex: 1, child: Center(child: Text('Edit data'))),
                    Expanded(flex: 1, child: Center(child: Text('Remove'))),
                  ],
                ),
                const Divider(),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 12,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return const SalesTeamTile();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
