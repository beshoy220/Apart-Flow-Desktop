import 'package:flutter/material.dart';

class SimpleInterestCalculator extends StatefulWidget {
  const SimpleInterestCalculator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SimpleInterestCalculatorState createState() =>
      _SimpleInterestCalculatorState();
}

class _SimpleInterestCalculatorState extends State<SimpleInterestCalculator> {
  final _formKey = GlobalKey<FormState>();
  double? _principal;
  double? _interestRate;
  double? _timeInYears;
  // RESULTS
  double? _totalInteste;

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
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff070727),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  _calculateMonthlyPayment();
                }
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            _totalInteste == null
                ? Container()
                : Text('Total interest taken: \$${_totalInteste}'),
          ],
        ),
      ),
    );
  }

  void _calculateMonthlyPayment() {
    _totalInteste = _principal! * (_interestRate! / 100) * _timeInYears!;
    setState(() {});
  }
}
