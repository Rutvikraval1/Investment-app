

import 'package:flutter/material.dart';

import '../../utils/sizebox.dart';
import '../../utils/theme.dart';

class investement_cal extends StatefulWidget {
  const investement_cal({super.key});

  @override
  State<investement_cal> createState() => _investement_calState();
}

class _investement_calState extends State<investement_cal> {
  double _investmentAmount = 10000;
  double _annualYieldToMaturity = 0.0227;
  double _term = 3;
  double _capitalAtMaturity = 0;
  double _totalInterest = 0;
  double _annualInterest = 0;
  DateTime _maturityDate = DateTime.now();
  bool isbutton_year_change=true;



  @override
  void initState() {
    // TODO: implement initState
    _calculate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19979FB8),
            blurRadius: 40,
            offset: Offset(4, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          Text(
              'Investment Amount',
              textAlign: TextAlign.center,
              style: Themes().style_nevy_blue20_color_12_600
          ),
          height_20,
          Row(
            children: [
              GestureDetector(
                onTap: _decrementInvestmentAmount,
                child: Container(
                  width: 31.07,
                  height: 32.03,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF8F8F8),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x33989FB9),
                        blurRadius: 4,
                        offset: Offset(0, 3),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text('-', style: Themes().style_brand_color_36_600),
                ),
              ),
              Expanded(
                child: Text(
                  '\$${_investmentAmount.round()}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF1C2C56),
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              GestureDetector(
                onTap: _incrementInvestmentAmount,
                child: Container(
                  width: 31.07,
                  height: 32.03,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF8F8F8),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x33989FB9),
                        blurRadius: 4,
                        offset: Offset(0, 3),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text('+', style: Themes().style_brand_color_36_600),
                ),
              ),

            ],
          ),
          height_20,
          const SizedBox(
            width: 76.63,
            height: 19.52,
            child: Text(
              '6.81% YTM',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF46AF35),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          height_15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  isbutton_year_change=true;
                  _term=3;
                  setState(() {});
                  _calculate();
                },
                child: Container(
                  width: 106.41,
                  height: 25,
                  decoration: isbutton_year_change?ShapeDecoration(
                    color: const Color(0xFFE6E9F1),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFF1C2C56)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ):ShapeDecoration(
                    color: const Color(0xFFF8F8F8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '3 Year Term',
                    style: Themes().style_nevy_blue10_color_13_600,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  isbutton_year_change=false;
                  _term=5;
                  setState(() {});
                  _calculate();
                },
                child: Container(
                  width: 106.41,
                  height: 25,
                  decoration: !isbutton_year_change?ShapeDecoration(
                    color: const Color(0xFFE6E9F1),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFF1C2C56)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ):ShapeDecoration(
                    color: const Color(0xFFF8F8F8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '5 Year Term',
                    style: Themes().style_nevy_blue10_color_13_600,
                  ),
                ),
              ),
            ],
          ),
          height_20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Capital At Maturity',
                      style:Themes().style_nevy_blue20_color_12_600
                  ),
                  height_5,
                  Text(
                    '\$${_capitalAtMaturity.round()}',
                    style:Themes().style_brand_color_22_500,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                      'Total Interest',
                      style:Themes().style_nevy_blue20_color_12_600
                  ),
                  height_5,
                  Text(
                    '\$${_totalInterest.round()}',
                    style:Themes().style_brand_color_22_500,
                  )
                ],
              )
            ],
          ),
          height_10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Annual Interest',
                      style:Themes().style_nevy_blue20_color_12_600
                  ),
                  height_5,
                  Text(
                    '\$$_annualInterest',
                    style:Themes().style_brand_color_22_500,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                      'Average Maturity Date ',
                      style:Themes().style_nevy_blue20_color_12_600
                  ),
                  height_5,
                  Text(
                    '${_maturityDate.year}',
                    style:Themes().style_brand_color_22_500,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }


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
    _calculate();
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
    _calculate();
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
}
