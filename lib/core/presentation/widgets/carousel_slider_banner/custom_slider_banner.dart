import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../utils/image.dart';
import '../../../utils/sizebox.dart';
import '../../../utils/theme.dart';
import '../image_asset_widget.dart';

class custom_slider_banner extends StatefulWidget {
  final TextEditingController onchange;
  final Function ontap;

  const custom_slider_banner({super.key, required this.onchange,required this.ontap});

  @override
  State<custom_slider_banner> createState() => _custom_slider_bannerState();
}

class _custom_slider_bannerState extends State<custom_slider_banner> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;


  List dynamic_image=[
    appImage.image1,
    appImage.image2,
    appImage.image3,
    appImage.image3,
  ];
  List sub_text=[
    'Standard',
    'Plus',
    'Max',
    'Unlimited',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 3.8,
          child: CarouselSlider.builder(
            carouselController: _carouselController,
            itemCount:dynamic_image.length,
            itemBuilder: (context, index, int) => Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                Positioned(
                    top: 80,
                    right: 50,
                    child: Img_asset(dynamic_image[index])
                ),
                Positioned(
                    top: 20,
                    left: 20,
                    child: brand_text(sub_text: sub_text[index])
                ),
                Positioned(
                    bottom: 20,
                    left: 20,
                    child: Card_start_button())
              ],
            ),
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              aspectRatio: 1.8,
              onPageChanged: (index, reason) {
                setState(() {
                  widget.ontap(index);
                  _current = index;
                  widget.onchange.text=_current.toString();
                });
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: dynamic_image.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _carouselController.animateToPage(entry.key),
              child: Container(
                width: 8,
                height: 8,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? brand_color
                            : brand_color)
                        .withOpacity(_current == entry.key ? 1 : 0.2)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
Widget brand_text({required String sub_text}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('bünd',style: Themes().style_brand_color_23_700,),
      Text(sub_text,style: Themes().style_light_shade_23_400),
    ],
  );
}
Widget Card_start_button() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
        color: white24_color, borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        SvgPicture_asset(appImage.arrow),
        width_10,
        Text(
          'Start Now',
          style: Themes().style_brand_color_13_500,
        )
      ],
    ),
  );
}
