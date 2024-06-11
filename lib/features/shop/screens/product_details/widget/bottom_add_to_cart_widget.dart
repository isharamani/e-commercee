import 'package:e_commercee/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddTocart extends StatelessWidget {
  const TBottomAddTocart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? TColors.darkerGrey : TColors.light,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(TSizes.cardRadiousLg),
              topRight: Radius.circular(TSizes.cardRadiousLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                icon: Iconsax.minus,
                backGroundColor: TColors.darkgrey,
                height: 40,
                width: 40,
                color: TColors.white,
              ),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              TCircularIcon(
                icon: Iconsax.add,
                backGroundColor: TColors.black,
                height: 40,
                width: 40,
                color: TColors.white,
              ),
            ],
          ),
          ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: TColors.black,
                side: BorderSide(color: TColors.black)
              ),
              child: Text("Add to Cart"))
        ],
      ),
    );
  }
}
