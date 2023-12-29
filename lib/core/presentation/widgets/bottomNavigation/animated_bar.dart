import 'package:flutter/material.dart';

class CustomAnimatedBottomBar extends StatelessWidget {
  const CustomAnimatedBottomBar({
    Key? key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Colors.white;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          if (showElevation)
            const BoxShadow(
              color: Colors.white,
              blurRadius: 2,
            ),
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: containerHeight,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () {
                  onItemSelected(index);
                },
                child: _ItemWidget(
                  item: item,
                  iconSize: iconSize,
                  isSelected: index == selectedIndex,
                  backgroundColor: bgColor,
                  itemCornerRadius: itemCornerRadius,
                  animationDuration: animationDuration,
                  curve: curve,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final BottomNavyBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  const _ItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.backgroundColor,
    required this.animationDuration,
    required this.itemCornerRadius,
    required this.iconSize,
    this.curve = Curves.linear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
        container: true,
        selected: isSelected,
        child: AnimatedContainer(
          width: 50,
          height: double.maxFinite,
          duration: animationDuration,
          curve: curve,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
              width: isSelected ? 50 : 50,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: InkWell(
                onTap: item.onPressed,
                enableFeedback: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconTheme(
                      data: IconThemeData(
                        size: iconSize,
                        color: isSelected
                            ? const Color(0xff457B9D).withOpacity(1)
                            : const Color(0xffC5C4D4),
                      ),
                      child: item.icon,
                    ),
                    if (isSelected)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: DefaultTextStyle.merge(
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              color: const Color(0xff457B9D).withOpacity(1),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class BottomNavyBarItem {
  BottomNavyBarItem({
    required this.icon,
    required this.title,
    this.textAlign,
    this.onPressed,
  });

  final Widget icon;
  final VoidCallback? onPressed;
  final Widget title;
  final TextAlign? textAlign;
}
