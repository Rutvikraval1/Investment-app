
import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class Common_heading {
  static Widget heading({
    required String heading_text,
    required Function view_onTap,
  }) => Row(
    children: [
      Text(heading_text,
          style: Themes().style_light_shade_2_16_500),
    ],
  );
}
