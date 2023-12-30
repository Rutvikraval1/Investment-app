

import 'package:investment_app/core/presentation/Scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/utils/theme.dart';

import '../../core/presentation/widgets/card/card.dart';
import '../../core/presentation/widgets/commonText_Title.dart';
import '../../core/presentation/widgets/investement_cal.dart';
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
                          decoration:ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0x191C2C56)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
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
                          decoration:ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0x191C2C56)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '5 Year Term',
                            style: Themes().style_nevy_blue10_color_13_600,
                          ),
                        ),
                      ],
                    ),
                    height_10,
                    const investement_cal(),
                    height_10,
                    Common_heading.heading(heading_text:'Bonds',view_onTap: (){}),
                    height_8,
                    ListView.builder(
                      itemCount: imagepath.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
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
          Navigator.push(context,MaterialPageRoute(builder:(context) => const InvestmentCalculator(),));

        }),
      ),

    );
  }





}
