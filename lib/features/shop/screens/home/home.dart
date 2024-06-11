import 'package:e_commercee/common/widgets/products/product_card_%20vertical.dart';
import 'package:e_commercee/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commercee/features/shop/screens/home/widgets/home_category.dart';
import 'package:e_commercee/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commercee/utils/constants/images_strings.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shape/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/container/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                TSearchContainer(
                  text: 'Search in Store',
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      THomeCategory()
                    ],
                  ),
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banner: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionHeading(title: "Popular Products",onPressed: () {

                  },),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  TGridLayout(itemCount: 2, itemBuilder: (_ , index )=>const TProductCardVertical())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

