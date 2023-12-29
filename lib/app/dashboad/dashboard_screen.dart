import 'package:investment_app/core/presentation/Scaffold_widget.dart';
import 'package:investment_app/core/utils/color.dart';
import 'package:flutter/material.dart';
import '../../core/presentation/widgets/card/card.dart';
import '../../core/presentation/widgets/carousel_slider_banner/custom_slider_banner.dart';
import '../../core/presentation/widgets/commonText_Title.dart';
import '../../core/presentation/widgets/container/costom_container.dart';
import '../../core/presentation/widgets/image_asset_widget.dart';
import '../../core/utils/image.dart';
import '../../core/utils/sizebox.dart';
import '../../core/utils/theme.dart';

class dashboard_screen extends StatefulWidget {
  const dashboard_screen({super.key});

  @override
  State<dashboard_screen> createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
TextEditingController current_value=TextEditingController(text: '0');


  List DynamicImages = [
    "http://via.placeholder.com/200x150",
    "http://via.placeholder.com/200x150",
    "http://via.placeholder.com/200x150",
  ];



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold_widget(
        appBar: AppBar(
          backgroundColor: transparent_color,
          title: SizedBox(
            width: width / 2.2,
            child:  ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Common_container.container(
                  child: SvgPicture_asset(appImage.user)),
              title: Text('Good Morning',
                  style: Themes().style_light_shade_10),
              subtitle: Text('Rutvik Raval',
                  style: Themes().style_Dark_shade_14_600),
            ),
          ),
          excludeHeaderSemantics: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Common_container.container(
                  child: SvgPicture_asset(appImage.notification)),
            )
          ],
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                height_15,
                custom_slider_banner(onchange: current_value,ontap: (value){
                  print("ss");
                  print(value);
                  setState(() {});
                }),
                height_10,
                Common_heading.heading(heading_text: 'Conditions',view_onTap: (){}),
                height_10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Common_card.card(image_path: appImage.min_dis,Sub_text: 'No Minimum Deposit')),
                    width_20,
                    Expanded(child: Common_card.card(image_path: appImage.bank,Sub_text: '\$15/Month (Paid Annually)')),
                  ],
                ),
                height_20,
                Common_heading.heading(heading_text: 'What You Get',view_onTap: (){}),
                height_10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Common_card.card(image_path: appImage.bank,Sub_text: 'Swiss Bank Account')),
                    width_20,
                    Expanded(child: Common_card.card(image_path: appImage.master_card,Sub_text: 'Mastercard Prepaid')),
                    width_20,
                    if(current_value.text=='0')
                      Expanded(child: Common_card.card(image_path: appImage.accout_open,Sub_text: 'Account Open Same Day')),
                    if(current_value.text!='0')
                      Expanded(child: Common_card.card(image_path: appImage.protec,Sub_text: 'Horizontal Scroll snap col 1')),
                  ],
                ),
                height_10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if(current_value.text=='0')
                      Expanded(child: Common_card.card(image_path: appImage.protec,Sub_text: 'Horizontal Scroll snap col 1')),
                    if(current_value.text=='0')
                      Expanded(child: Container()),
                    if(current_value.text=='0')
                      Expanded(child: Container()),
                    if(current_value.text!='0')
                      Expanded(child: Common_card.card(image_path: appImage.investment_Portfolios,Sub_text: 'Investment Portfolios')),
                    if(current_value.text!='0')
                      Expanded(child: Common_card.card(image_path: appImage.fixed_Income,Sub_text: 'Fixed Income Deposit')),
                    if(current_value.text!='0')
                      Expanded(child: Container()),

                  ],
                ),

              ],
            ),
          ),
        ));
  }
}
