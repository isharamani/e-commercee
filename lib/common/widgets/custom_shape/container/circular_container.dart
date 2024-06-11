import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';

class TCricularContainer extends StatelessWidget {
  const TCricularContainer({
    super.key,
    this.child,
    this.height=400,
    this.width=400,
    this.radious=400,
    this.backgroundColor= TColors.white,
    this.padding=0,  this.margin,
  });

  final double? width;
  final double? height;
  final double radious;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(radious),
        color:backgroundColor,
      ),
      child: child,
    );
  }
}
