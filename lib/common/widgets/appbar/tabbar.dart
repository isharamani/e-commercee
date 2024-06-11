import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/device/device_utility.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return Material(
      color: dark?TColors.black:TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark?TColors.white:TColors.primary,
        unselectedLabelColor: TColors.darkgrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
