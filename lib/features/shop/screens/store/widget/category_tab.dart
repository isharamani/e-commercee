import 'package:e_commercee/common/widgets/layout/grid_layout.dart';
import 'package:e_commercee/common/widgets/products/product_card_%20vertical.dart';
import 'package:e_commercee/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../utils/constants/images_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TBrandShowCase(
                imagess: [
                  TImages.productImage3,
                  TImages.productImage2,
                  TImages.productImage1
                ],

              ),
          const TBrandShowCase(
            imagess: [
              TImages.productImage3,
              TImages.productImage2,
              TImages.productImage1
            ],),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TSectionHeading(title: "You might like",onPressed: () {

              },),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TGridLayout(itemCount: 4, itemBuilder:(_,index) =>const TProductCardVertical()),
              const SizedBox(height: TSizes.spaceBtwSections,)
            ],
          ),
        ),
      ],
    );
  }
}
