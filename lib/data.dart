import 'package:flutter/material.dart';

//
// class InvestmentCalculator extends StatefulWidget {
//   @override
//   _InvestmentCalculatorState createState() => _InvestmentCalculatorState();
// }
//
// class _InvestmentCalculatorState extends State<InvestmentCalculator> {
//   double amount = 10000.0;
//   double annualYield = 0.00;
//   int term = 3;
//   double capitalAtMaturity = 0.0;
//   double totalInterest = 0.0;
//   double annualInterest = 0.0;
//
//   void updateCalculations() {
//     capitalAtMaturity = (annualYield * term * amount) + amount;
//     totalInterest = annualYield * term * amount;
//     annualInterest = amount * annualYield;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Investment Calculator'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Investment Amount: \$${amount.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       amount = (amount > 10000) ? amount - 10000 : (amount > 250 ? amount - 1000 : amount);
//                       amount = amount.clamp(250, double.infinity);
//                       updateCalculations();
//                     });
//                   },
//                   onLongPress: () {
//                     setState(() {
//                       amount = (amount > 10000) ? amount - 10000 : (amount > 250 ? amount - 1000 : amount);
//                       updateCalculations();
//                     });
//                   },
//                   child: Text('-'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       amount = (amount < 10000) ? amount + 10000 : amount + 1000;
//                       updateCalculations();
//                     });
//                   },
//                   onLongPress: () {
//                     setState(() {
//                       amount = (amount < 10000) ? amount + 10000 : amount + 1000;
//                       updateCalculations();
//                     });
//                   },
//                   child: Text('+'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Capital at Maturity: \$${capitalAtMaturity.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Total Interest: \$${totalInterest.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Annual Interest: \$${annualInterest.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Average Maturity Date: ${DateTime.now().add(Duration(days: term * 365)).toLocal()}',
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
///
// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class InvestmentCalculator extends StatefulWidget {
//   const InvestmentCalculator({Key? key}) : super(key: key);
//
//   @override
//   State<InvestmentCalculator> createState() => _InvestmentCalculatorState();
// }
//
// class _InvestmentCalculatorState extends State<InvestmentCalculator> {
//   final _formKey = GlobalKey<FormState>();
//   double _amount = 10000;
//   double _annualYield = 5.0;
//   int _term = 3;
//   DateTime _maturityDate = DateTime.now();
//
//   void _updateAmount(bool increase) {
//     final increment = _amount <= 10000 ? 1000 : 10000;
//     setState(() {
//       _amount += increase ? increment : -increment;
//       _amount = _amount.clamp(250, double.infinity); // Enforce minimum
//       _calculateAndUpdate();
//     });
//   }
//
//   var capitalAtMaturity;
//   var totalInterest;
//   var annualInterest;
//   void _calculateAndUpdate() {
//     _maturityDate = DateTime.now().add(Duration(days: _term * 365));
//     setState(() {
//        capitalAtMaturity = (_annualYield * _term * _amount) + _amount;
//        totalInterest = _annualYield * _term * _amount;
//        annualInterest = _amount * _annualYield;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Investment Calculator'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               // ... (Fields for annual yield and term)
//               TextFormField(
//                 initialValue: _amount.toString(),
//                 keyboardType: TextInputType.number,
//                 onChanged: (value) {
//                   if (value.isNotEmpty) {
//                     setState(() {
//                       _amount = double.parse(value);
//                       _calculateAndUpdate();
//                     });
//                   }
//                 },
//                 decoration: const InputDecoration(
//                   labelText: 'Investment Amount',
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onLongPress: () => _longPressHandler(true),
//                     onPressed: () => _updateAmount(true),
//                     child: const Icon(Icons.add),
//                   ),
//                   const SizedBox(width: 16),
//                   Expanded(
//                     child: Text(
//                       '\$ $_amount',
//                       // NumberFormat.currency(symbol: '\$').format(_amount),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                   ElevatedButton(
//                     onLongPress: () => _longPressHandler(false),
//                     onPressed: () => _updateAmount(false),
//                     child: const Icon(Icons.remove),
//                   ),
//                 ],
//               ),
//               Text(
//                 'Capital at Maturity: \$ $capitalAtMaturity',
//               ),
//               Text(
//                 'Total Interest: \$ $totalInterest',
//               ),
//               Text(
//                 'Annual Interest: \$ $annualInterest',
//               ),
//               Text(
//                 'Maturity Date: $_maturityDate',
//               ),
//               // ... (Display fields for calculated values)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _longPressHandler(bool increase) {
//     HapticFeedback.heavyImpact(); // Provide haptic feedback
//     Timer.periodic(const Duration(milliseconds: 100), (timer) {
//       _updateAmount(increase);
//       if (!_formKey.currentState!.validate()) {
//         timer.cancel();
//       }
//     });
//   }
// }
///



import 'package:flutter/material.dart';

class InvestmentCalculator extends StatefulWidget {
  const InvestmentCalculator({Key? key,}) : super(key: key);


  @override
  State<InvestmentCalculator> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<InvestmentCalculator> {
  double _investmentAmount = 10000;
  double _annualYieldToMaturity = 0.0227;
  double _term = 3;
  double _capitalAtMaturity = 0;
  double _totalInterest = 0;
  double _annualInterest = 0;
  DateTime _maturityDate = DateTime.now();

  void _incrementInvestmentAmount() {
    setState(() {
      _investmentAmount += 1000;
      // if (_investmentAmount <= 10000) {
      //   _investmentAmount += 1000;
      // }

      if (_investmentAmount < 250) {
        _investmentAmount = 250;
      }
    });
  }

  void _decrementInvestmentAmount() {
    setState(() {
      _investmentAmount -= 1000;
      // if (_investmentAmount <= 10000) {
      //   _investmentAmount -= 1000;
      // }

      if (_investmentAmount < 250) {
        _investmentAmount = 250;
      }
    });
  }

  void _calculate() {
    setState(() {
      print("_capitalAtMaturity");
      print(_annualYieldToMaturity);
      print(_term);
      print(_investmentAmount);


      _capitalAtMaturity =
          (_annualYieldToMaturity * _term * _investmentAmount) +
              _investmentAmount;
      _totalInterest = _annualYieldToMaturity * _term * _investmentAmount;
      _annualInterest = _investmentAmount * 6.81/1000;
      _maturityDate = DateTime.now().add(Duration(days: (_term * 365).toInt()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Investment Amount:',
            ),
            Text(
              '\$${_investmentAmount.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: _decrementInvestmentAmount,
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _incrementInvestmentAmount,
                ),
              ],
            ),
            TextButton(
              onPressed: _calculate,
              child: Text('Calculate'),
            ),
            Text(
              'Capital at Maturity: \$${_capitalAtMaturity.toStringAsFixed(2)}',
            ),
            Text(
              'Total Interest: \$${_totalInterest.toStringAsFixed(2)}',
            ),
            Text(
              'Annual Interest: \$${_annualInterest.toStringAsFixed(2)}',
            ),
            Text(
              'Average Maturity Date: ${_maturityDate.year}-${_maturityDate.month}-${_maturityDate.day}',
            ),
          ],
        ),
      ),
    );
  }
}
