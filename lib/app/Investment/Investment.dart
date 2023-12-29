

import 'package:investment_app/core/presentation/Scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/utils/theme.dart';

import '../../core/presentation/widgets/card/card.dart';
import '../../core/presentation/widgets/commonText_Title.dart';
import '../../core/presentation/widgets/navigate_btn.dart';
import '../../core/utils/color.dart';
import '../../core/utils/image.dart';
import '../../core/utils/sizebox.dart';
import '../../data.dart';

class Investment_screen extends StatefulWidget {
  const Investment_screen({super.key});

  @override
  State<Investment_screen> createState() => _Investment_screenState();
}

class _Investment_screenState extends State<Investment_screen> {

  List imagepath=[
    appImage.dummy1,
    appImage.dummy2,
    appImage.dummy3,
    appImage.dummy4,
  ];
  List Title_name=[
    'Netflix INC',
    'Ford Motor LLC',
    'Apple INC',
    'Morgan Stanley',
  ];
  List Sub_title_name=[
    'BBB',
    'BB+',
    'AA+',
    'A-',
  ];
  List total_per=[
    '5.37% APY',
    '7.71% APY',
    '4.85% APY',
    '6.27% APY',
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold_widget(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new_outlined)),

          centerTitle: true,
          backgroundColor: transparent_color,
          elevation: 0,
          surfaceTintColor: transparent_color,
          title: Text(
            'Fixed Income',
            style: Themes().style_dark_blue_color_20_500,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Fixed Income Portfolio',
                      style: Themes().style_dark_blue10_color_22_700
                    ),
                    height_8,
                    Text(
                      'A fixed income portfolio consists of bonds and other securities providing steady income and relatively lower risk.',
                      style: Themes().style_nevy_blue_color_14_600,
                    ),
                    height_30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Annual Yield To Maturity (YTM)',
                          style:Themes().style_nevy_blue20_color_16_600
                        ),
                        const SizedBox(width: 5,),
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: nevy_blue10_color
                          ),
                          padding: const EdgeInsets.all(7),
                          child: const Text('i',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '6.81%',
                        style:Themes().style_brand_color_32_500
                      ),
                    ),
                    height_5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Average Rating',
                          style:Themes().style_nevy_blue20_color_12_600
                        ),
                        Text(
                          'Bonds',
                            style:Themes().style_nevy_blue20_color_12_600
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'AA',
                          style:Themes().style_brand_color_22_500,
                        ),
                        Text(
                          '20 Companies',
                          style:Themes().style_brand_color_22_500,
                        )
                      ],
                    ),
                    height_10,
                    Text(
                      'Term Types',
                        style:Themes().style_nevy_blue20_color_12_600
                    ),
                    height_8,
                    Row(
                      children: [
                        Container(
                          width: 106.41,
                          height: 25,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0x191C2C56)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          // padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          alignment: Alignment.center,
                          child: Text(
                            '3 Year Term',
                            style: Themes().style_nevy_blue10_color_13_600,
                          ),
                        ),
                        width_10,
                        Container(
                          width: 106.41,
                          height: 25,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0x191C2C56)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          // padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          alignment: Alignment.center,
                          child: Text(
                            '5 Year Term',
                            style: Themes().style_nevy_blue10_color_13_600,
                          ),
                        ),
                      ],
                    ),
                    height_10,
                    Container(
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
                              Container(
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
                              const Expanded(
                                child: Text(
                                  '\$10,000',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF1C2C56),
                                    fontSize: 36,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    height: 0.05,
                                  ),
                                ),
                              ),
                              Container(
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
                              Container(
                                width: 106.41,
                                height: 25,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFE6E9F1),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(width: 1, color: Color(0xFF1C2C56)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '3 Year Term',
                                  style: Themes().style_nevy_blue10_color_13_600,
                                ),
                              ),
                              Container(
                                width: 106.41,
                                height: 25,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF8F8F8),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '5 Year Term',
                                  style: Themes().style_nevy_blue10_color_13_600,
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
                                    '\$10,681',
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
                                    '\$681',
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
                                    '\$68.1',
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
                                    '2026',
                                    style:Themes().style_brand_color_22_500,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    height_10,
                    Common_heading.heading(heading_text:'Bonds',view_onTap: (){}),
                    height_8,
                    ListView.builder(
                      itemCount: imagepath.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>Column(
                      children: [
                        Common_card.Listtile_card(
                            image_path:imagepath[index],
                            title:  Title_name[index],
                            Sub_text:Sub_title_name[index],
                            total_per:total_per[index]
                        ),
                        height_10,
                      ])
                      ,)

                  ],
                ),
          ),
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: NavigateBtn(text:'Create Investment Account',onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder:(context) => InvestmentCalculator(),));

        }),
      ),

    );
  }
}
