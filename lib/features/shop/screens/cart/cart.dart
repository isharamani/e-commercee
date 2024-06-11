import 'package:e_commercee/common/widgets/appbar/appbar.dart';
import 'package:e_commercee/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commercee/common/widgets/images/t_rounded_image.dart';
import 'package:e_commercee/common/widgets/texts/product_price_text.dart';
import 'package:e_commercee/common/widgets/texts/product_title_text.dart';
import 'package:e_commercee/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commercee/features/shop/screens/checkout/checkout.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/images_strings.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItem()
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () {
          Get.to(CheckoutScreen());
        },child: Text("Checkout \$256.0"),),
      ),
    );
  }
}
