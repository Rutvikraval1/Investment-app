import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


SvgPicture SvgPicture_asset(String image_path,
    {double? height, double? width, Color? color_code}) {
  return SvgPicture.asset(
    image_path,
    height: height,
    width: width,
    color: color_code,
  );
}

Image Img_asset(String image_path,
    {double? height,
      double? width,
      Color? color_code,
      BoxFit? boxFit,
      BlendMode? blendMode}) {
  return Image.asset(
    image_path,
    height: height,
    width: width,
    color: color_code,
    colorBlendMode: blendMode,
    fit: boxFit,
    // opacity: const AlwaysStoppedAnimation(2),
  );
}

Image File_Img_asset(File image_path,
    {double? height,
      double? width,
      Color? color_code,
      BoxFit? boxFit,
      BlendMode? blendMode}) {
  return Image.file(
    image_path,
    height: height,
    width: width,
    color: color_code,
    colorBlendMode: blendMode,
    fit: boxFit,
    // opacity: const AlwaysStoppedAnimation(2),
  );
}


FadeInImage fadeInImage_network({required String image_path,BoxFit? boxFit,double? width}) {
  return FadeInImage(
    placeholder: const AssetImage('assets/icon/png/no_image.png'),
    image: NetworkImage(
      image_path,
    ),
    imageErrorBuilder: (context, error, stackTrace) => Image.asset(
      'assets/icon/png/no_image.png',
    ),
    width: width,
    fit: boxFit,
  );
}

