import 'package:e_commercee/common/widgets/appbar/appbar.dart';
import 'package:e_commercee/common/widgets/custom_shape/curved_edges/curved_edges_widgeet.dart';
import 'package:e_commercee/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commercee/common/widgets/images/t_rounded_image.dart';
import 'package:e_commercee/common/widgets/texts/section_heading.dart';
import 'package:e_commercee/features/shop/screens/product_details/widget/bottom_add_to_cart_widget.dart';
import 'package:e_commercee/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:e_commercee/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:e_commercee/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:e_commercee/features/shop/screens/product_details/widget/rating_share_widget.dart';
import 'package:e_commercee/features/shop/screens/roduct_review/product_review.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/images_strings.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddTocart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace,
                  left: TSizes.defaultSpace),
              child: Column(
                children: [
                  TRatingAndShare(),
                  TProductMetaData(),
                  TProductAttribute(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Checkout")),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    "This is a product description for Blue Nike Sleeve less vest. There are more things that can be added but i ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: "Less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  Divider(),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: "Reviews(199)",
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                        onPressed: () {
                          Get.to(ProductReivewScreen());
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
