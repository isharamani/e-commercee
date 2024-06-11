import 'package:e_commercee/utils/constants/enum.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maXlines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final Color? color;
  final int maXlines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            maxLines: maXlines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis,
            style: brandTextSizes == TextSizes.small
                ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
                : brandTextSizes == TextSizes.medium
                    ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                    : brandTextSizes == TextSizes.large
                        ? Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .apply(color: color)
                        : Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: color)),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(
          Iconsax.verify,
          color: TColors.primary,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
