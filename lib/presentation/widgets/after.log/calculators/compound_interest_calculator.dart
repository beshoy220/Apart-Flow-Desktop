import 'dart:math';

import 'package:flutter/material.dart';

class CompoundInterestCalculator extends StatefulWidget {
  const CompoundInterestCalculator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CompoundInterestCalculatorState createState() =>
      _CompoundInterestCalculatorState();
}

class _CompoundInterestCalculatorState
    extends State<CompoundInterestCalculator> {
  final _formKey = GlobalKey<FormState>();
  double? _principal;
  double? _interestRate;
  double? _timeInYears;
  double? _convertedTimes;
  double? _result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Loan Amount (Principle)',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a loan amount';
                }
                return null;
              },
              onSaved: (value) {
                _principal = double.parse(value!);
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Interest Rate (%)',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an interest rate';
                }
                return null;
              },
              onSaved: (value) {
                _interestRate = double.parse(value!);
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Loan Term (years)',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a loan term';
                }
                return null;
              },
              onSaved: (value) {
                _timeInYears = double.parse(value!);
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Convered Times (if it\'s annually type 1)',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the converted times';
                }
                return null;
              },
              onSaved: (value) {
                _convertedTimes = double.parse(value!);
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff070727),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  _calculateCompoundInterest();
                }
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            _result == null
                ? Container()
                : Text('Total Interest Payment: \$$_result'),
          ],
        ),
      ),
    );
  }

  void _calculateCompoundInterest() {
    _result = _principal! *
        pow(1 + ((_interestRate! / 100) / _convertedTimes!),
            _timeInYears! * _convertedTimes!);
    setState(() {});
  }
}
