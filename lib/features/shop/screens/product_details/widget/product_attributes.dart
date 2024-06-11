import 'package:e_commercee/common/widgets/chips/choice_chip.dart';
import 'package:e_commercee/common/widgets/container/t_rounded_container.dart';
import 'package:e_commercee/common/widgets/texts/product_price_text.dart';
import 'package:e_commercee/common/widgets/texts/product_title_text.dart';
import 'package:e_commercee/common/widgets/texts/section_heading.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:e_commercee/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TProductAttribute extends StatelessWidget {
  const TProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backGroundColor: dark ? TColors.darkgrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  TSectionHeading(
                    title: "Veriation",
                    showActionButton: false,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitletexts(
                            title: "Price",
                            smallSize: true,
                          ),
                          SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          TProductPriceText(price: "20"),
                        ],
                      ),
                      Row(
                        children: [
                          TProductTitletexts(
                            title: "Stock:",
                            smallSize: true,
                          ),
                          Text("In Stock",
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              TProductTitletexts(
                title:
                    "This is description of the product and it can go upto max 4 lines.",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: "Colors"),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
           Wrap(
             spacing: 8,
             children: [
               TChoiceChip(text: "Green", selected: false, onselected: (value) {}),
               TChoiceChip(text: "blue", selected: true, onselected: (value) {}),
               TChoiceChip(
                   text: "Yellow", selected: false, onselected: (value) {}),

             ],
           )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: "Colors"),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
          Wrap(
            spacing: 8,
            children: [
              TChoiceChip(text: "EU 34", selected: true, onselected: (value) {}),
              TChoiceChip(text: "EU 36", selected: false, onselected: (value) {}),
              TChoiceChip(text: "EU 38", selected: false, onselected: (value) {}),

            ],
          )
          ],
        )
      ],
    );
  }
}
