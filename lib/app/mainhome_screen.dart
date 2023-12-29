

import 'package:flutter/material.dart';
import '../core/presentation/Scaffold_widget.dart';
import '../core/presentation/widgets/bottomNavigation/CoustomBotomBar/coustom_navigation_bar.dart';
import '../core/presentation/widgets/bottomNavigation/CoustomBotomBar/custom_navigation_bar_item.dart';
import '../core/presentation/widgets/image_asset_widget.dart';
import '../core/utils/color.dart';
import '../core/utils/image.dart';
import 'Investment/coupons_screen.dart';
import 'dashboad/dashboard_screen.dart';

class mainhome_screen extends StatefulWidget {
  const mainhome_screen({super.key});

  @override
  State<mainhome_screen> createState() => _mainhome_screenState();
}

class _mainhome_screenState extends State<mainhome_screen> {
  int _currentIndex = 0;
  List<Widget> getBody = [
    const dashboard_screen(),
    const Investment_screen(),
    Container(),
  ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold_widget(
      body:  getBody[_currentIndex],
      bottomNavigationBar:_buildBottomBar(context),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return CustomNavigationBar(
      bubbleCurve: Curves.bounceInOut,
      selectedColor: brand_color,
      elevation: 0,
      onTap: (value)  {
        if(value!=2){
          setState(() {
            _currentIndex = value;
          });
        }
      },
      unSelectedColor: light_shade,
      currentIndex: _currentIndex,
      items: [
        CustomNavigationBarItem(
            title: const Text("Home"),
            icon: SvgPicture_asset(appImage.home,color_code: light_shade),
            selectedIcon:SvgPicture_asset(appImage.home)

        ),
        CustomNavigationBarItem(
          title: const Text("Investment"),
          icon: SvgPicture_asset(appImage.investment),
          selectedIcon: SvgPicture_asset(appImage.investment,color_code: brand_color),
        ),
        CustomNavigationBarItem(
          title: const Text("Chat"),
          icon:SvgPicture_asset(appImage.message),
          selectedIcon:SvgPicture_asset(appImage.message,color_code: brand_color),
        ),
      ],
    );
  }
}
