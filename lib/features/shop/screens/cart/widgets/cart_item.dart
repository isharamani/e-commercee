import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({super.key,  this.showAddremoveButton=true});

  final bool showAddremoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        Column(
          children: [
            TCartItem(),
            if(showAddremoveButton)SizedBox(
              height: TSizes.spaceBtwItems,
            ),
          if(showAddremoveButton)Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70,),
                    TProductQuantityWithRemoveButton(),

                  ],
                ),
                TProductPriceText(price: "256"),

              ],
            )
          ],
        );
      },
    );
  }
}
