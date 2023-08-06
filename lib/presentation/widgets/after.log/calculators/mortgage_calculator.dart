import 'dart:math';
import 'package:flutter/material.dart';

class MortgageCalculator extends StatefulWidget {
  const MortgageCalculator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MortgageCalculatorState createState() => _MortgageCalculatorState();
}

class _MortgageCalculatorState extends State<MortgageCalculator> {
  final _formKey = GlobalKey<FormState>();
  double? _principal;
  double? _interestRate;
  double? _loanTerm;
  double? _monthlyPayment;

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
                labelText: 'Loan Amount',
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
                labelText: 'Interest Rate',
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
                _loanTerm = double.parse(value!);
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  _calculateMonthlyPayment();
                }
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            _monthlyPayment == null
                ? Container()
                : Text(
                    'Monthly Payment: \$${_monthlyPayment?.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }

  void _calculateMonthlyPayment() {
    double monthlyInterestRate = (_interestRate! / 100) / 12;
    double totalPayments = _loanTerm! * 12;
    double discountFactor = ((1 + monthlyInterestRate) * totalPayments - 1) /
        (monthlyInterestRate * pow(1 + monthlyInterestRate, totalPayments));
    _monthlyPayment = (_principal! / discountFactor);
    setState(() {});
  }
}
