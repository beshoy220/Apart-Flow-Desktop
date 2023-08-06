import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class SalesTeamTile extends StatefulWidget {
  const SalesTeamTile({super.key});

  @override
  State<SalesTeamTile> createState() => _SalesTeamTileState();
}

class _SalesTeamTileState extends State<SalesTeamTile> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      child: Container(
        color: (isHovering) ? Colors.white10 : const Color(0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xff070727),
                          image: DecorationImage(
                            image: AssetImage('assets/salesman.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )),
                const Expanded(flex: 1, child: Center(child: Text('Micheal '))),
                const Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10),
                          child: Text('Target of the month'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: LinearProgressIndicator(value: 0.34)),
                              Expanded(
                                  flex: 1,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('34%')))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                              'Age : 25\nWork scice : 2019/12/21\nAddress : well st. NewYork city\nEarned Money by commission : 100k'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10),
                          child: Row(
                            children: [
                              Text('Rating by clintes :   '),
                              RatingStars(
                                value: 4.5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff070727),
                          ),
                          onPressed: () {},
                          child: const Text('Edit')),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF270707),
                          ),
                          onPressed: () {},
                          child: const Text('Remove')),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
