import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backGroundColor: THelperfunction.isDarkMode(context)
              ? TColors.darkgrey
              : TColors.light,
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(
                title: "Nike",
              ),
              Flexible(child: TProductTitletexts(title: "Black Sports Shoes",maxLines: 1,)),
              Text.rich(TextSpan(children:
              [
                TextSpan(text: "Color",style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: "Green",style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: "Size",style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: "UK 08",style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}