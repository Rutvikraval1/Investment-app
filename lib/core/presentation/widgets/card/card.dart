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
}