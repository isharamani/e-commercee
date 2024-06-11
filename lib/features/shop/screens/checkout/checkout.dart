import 'package:e_commercee/common/widgets/appbar/appbar.dart';
import 'package:e_commercee/common/widgets/container/t_rounded_container.dart';
import 'package:e_commercee/common/widgets/products/cart/cart_item.dart';
import 'package:e_commercee/common/widgets/success_screen/succes_screen.dart';
import 'package:e_commercee/features/shop/screens/checkout/widgets/biiling_amount_section.dart';
import 'package:e_commercee/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commercee/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commercee/navigation_menu.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/images_strings.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TCartItem(),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TCouponcode(dark: dark),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              TRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md),
                backGroundColor: dark? TColors.black:TColors.white,
                child: Column(
                  children: [
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    TBillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    TBillingAddressSection()

                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () {
          Get.to(SuccesScreen(image: TImages.successfulPaymentIcon, title: "Payment Success!", subtitle: "Your item will be shipped soon!", onPressed: () {
            Get.to(NavigationMenu());
          },));
        },child: Text("Checkout \$256.0"),),
      ),

    );
  }
}

