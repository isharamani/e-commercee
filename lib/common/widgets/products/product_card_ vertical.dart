import 'package:e_commercee/common/widgets/container/t_rounded_container.dart';
import 'package:e_commercee/common/widgets/images/t_rounded_image.dart';
import 'package:e_commercee/common/widgets/texts/product_price_text.dart';
import 'package:e_commercee/common/widgets/texts/product_title_text.dart';
import 'package:e_commercee/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commercee/features/shop/screens/product_details/product_details.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/images_strings.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../styles/shadow.dart';
import '../icons/t_circular_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return GestureDetector(
      onTap:() {
        Get.to(ProductDetailsScreen());
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productimageradious),
            color: dark ? TColors.darkgrey : TColors.white),
        child: Column(
          children: [
            ///Thumbnail ,wishlist button,discount tag
            TRoundedContainer(
              height: 130,
              padding: const EdgeInsets.all(TSizes.sm),
              backGroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  ///thumnail image
                  const TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadious: true,
                  ),
                  ///sale tage
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
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
                  ),
                  ///favorite icon button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        color: Colors.red,
                        icon: Iconsax.heart,
                      )),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            ///detail
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   TProductTitletexts(title: "Green Nike Air Shoes",smallSize: true,),
                    SizedBox(height: TSizes.spaceBtwItems/2,),
                 TBrandTitleWithVerifiedIcon(title: "Nike")
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: "35.0",),
                ),
                ///add to cart button
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiousMd),
                        bottomRight: Radius.circular(TSizes.productimageradious),
                      )
                  ),
                  child: const SizedBox(
                      width: TSizes.iconLg*1.2,
                      height: TSizes.iconLg*1.2,
                      child: Center(child: Icon(Iconsax.add,color: TColors.white,))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
