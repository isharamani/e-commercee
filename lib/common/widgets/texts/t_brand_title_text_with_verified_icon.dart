import 'package:e_commercee/common/widgets/texts/t_brand_title_text.dart';
import 'package:e_commercee/utils/constants/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maXlines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
    this.textcolor,
    this.iconColor=TColors.primary,
  });

  final String title;
  final Color? textcolor, iconColor;
  final int maXlines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textcolor,
            maXlines: maXlines,
            textAlign: textAlign,
           brandTextSizes: brandTextSizes,
          ),
        ),
        const SizedBox(
          width: TSizes.xs,
        ),
        Icon(
          Iconsax.verify,
          color:iconColor,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
