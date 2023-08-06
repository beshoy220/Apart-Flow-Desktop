import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CurrencyButton extends StatelessWidget {
  String currencyText;
  IconData currencyIcon;
  bool isActive;

  CurrencyButton(
      {super.key,
      required this.currencyText,
      required this.currencyIcon,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        width: 180,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isActive ? const Color(0xFF000835) : const Color(0xff6B6B6B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(currencyIcon),
                  const SizedBox(width: 5),
                  Text(
                    currencyText,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
