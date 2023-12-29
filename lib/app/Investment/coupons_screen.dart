

import 'package:investment_app/core/presentation/Scaffold_widget.dart';
import 'package:flutter/material.dart';

class Investment_screen extends StatefulWidget {
  const Investment_screen({super.key});

  @override
  State<Investment_screen> createState() => _Investment_screenState();
}

class _Investment_screenState extends State<Investment_screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold_widget(body:
    Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Coupons',
          ),
        ],
      ),
    ));
  }
}
