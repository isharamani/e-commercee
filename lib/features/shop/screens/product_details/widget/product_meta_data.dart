import 'package:e_commercee/common/widgets/images/t_circular_iamge.dart';
import 'package:e_commercee/common/widgets/texts/product_price_text.dart';
import 'package:e_commercee/common/widgets/texts/product_title_text.dart';
import 'package:e_commercee/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commercee/utils/constants/enum.dart';
import 'package:e_commercee/utils/constants/images_strings.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/container/t_rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            TRoundedContainer(
              radious: TSizes.sm,
              backGroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems  ,),
            Text("\$250",style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: TSizes.spaceBtwItems,),
          TProductPriceText(price: "175",isLarge: true,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/1.5,),
        TProductTitletexts(title: "Green Nike Sport Shirt"),
        SizedBox(height: TSizes.spaceBtwItems/1.5,),
     Row(
       children: [
         TProductTitletexts(title: "Status "),
         SizedBox(width: TSizes.spaceBtwItems,),
         Text("In Stock",style: Theme.of(context).textTheme.titleMedium,),
       ],
     ),
        SizedBox(height: TSizes.spaceBtwItems/1.5,),
        Column(
          children: [
            TCircularImage(
                width: 32,
                height: 32,
                overlayColor: dark? TColors.black:TColors.white ,
                image: TImages.cosmeticIcon),
            TBrandTitleWithVerifiedIcon(title: "Nike",brandTextSizes: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
