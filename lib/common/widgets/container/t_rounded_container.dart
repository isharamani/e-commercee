import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
      this.width,
      this.height,
       this.radious=TSizes.cardRadiousLg,
      this.child,
      this.showBorder=false,
      this.borderCOlor=TColors.borderprimary,
      this.backGroundColor=TColors.white,
      this.padding,
      this.margin});

  final double? width, height;
  final double radious;
  final Widget? child;
  final bool showBorder;
  final Color borderCOlor;
  final Color backGroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector();
  }
}
