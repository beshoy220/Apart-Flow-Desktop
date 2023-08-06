import 'package:counter_button/counter_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Counter extends StatefulWidget {
  String title;
  int value;

  Counter({super.key, required this.title, required this.value});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff070727),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(widget.title),
            const SizedBox(height: 10),
            CounterButton(
              loading: false,
              onChange: (int val) {
                setState(() {
                  if (!val.isNegative) {
                    widget.value = val;
                  }
                });
              },
              count: widget.value,
              countColor: Colors.white,
              buttonColor: Colors.white,
              progressColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
