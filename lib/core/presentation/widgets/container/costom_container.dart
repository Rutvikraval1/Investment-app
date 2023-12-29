import 'package:flutter/material.dart';

import '../../../utils/color.dart';


class Common_container{
  static Widget container({
    required Widget child,
    final EdgeInsetsGeometry? padding
  })=>Container(
      decoration:  BoxDecoration(
        color:white_color,
        shape: BoxShape.circle,
      ),
    padding:padding?? EdgeInsets.all(8),
    child: child,
  );
}