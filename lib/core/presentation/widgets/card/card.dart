import 'package:flutter/material.dart';
import 'package:investment_app/core/utils/theme.dart';

import '../../../utils/color.dart';
import '../../../utils/image.dart';
import '../../../utils/sizebox.dart';
import '../image_asset_widget.dart';


class Common_card{
  static Widget card({required String image_path,required String Sub_text})=>Container(
    decoration:  BoxDecoration(
      color: white_color.withOpacity(0.5),
      borderRadius: BorderRadius.circular(10)
    ),
    alignment: Alignment.center,
    // height: 120,
    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture_asset(image_path),
        height_8,
        Text(Sub_text,maxLines:2,textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,style: Themes().style_dark_blue_color_12_500,)
      ],
    ),
  );



  static Widget Listtile_card({required String image_path,required String title,required String Sub_text,required String total_per})=>Container(
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
      child:ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
            height: 0.09,
          ),
        ),
        subtitle: Text(
          Sub_text,
          style: TextStyle(
            color: Color(0xFF727272),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing:Text(
          total_per,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Color(0xFF46AF35),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ) ,
        leading: Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: Color(0xFFF8F8F8),
            shape: OvalBorder(),
          ),
          padding: EdgeInsets.all(10),
          child: Img_asset(image_path),
        ),
      )
  );
}