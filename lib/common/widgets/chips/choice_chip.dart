import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip(
      {super.key, required this.text, required this.selected, this.onselected});

  final String text;
  final bool selected;
  final void Function(bool)? onselected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperfunction.getColor(text)!=null;
    return ChoiceChip(
      label: THelperfunction.getColor(text) != null ? SizedBox() : Text(""),
      selected: selected,
      onSelected: onselected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      // avatar: isColor
      //     ? TCircularContainer(
      //         width: 50,
      //         height: 50,
      //         backgroundColor: THelperfunction.getColor(text)!)
      //     : null,
      shape:isColor ? CircleBorder() : null,
      labelPadding:
          isColor? EdgeInsets.all(0) : null,
      padding:isColor ? EdgeInsets.all(0) : null,
      backgroundColor: isColor
          ? THelperfunction.getColor(text)!
          : null,
    );
  }
}
