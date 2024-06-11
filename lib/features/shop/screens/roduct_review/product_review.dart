import 'package:e_commercee/common/widgets/appbar/appbar.dart';
import 'package:e_commercee/features/shop/screens/roduct_review/widget/progress_indicator_and_rating.dart';
import 'package:e_commercee/features/shop/screens/roduct_review/widget/rating_progress_indicator.dart';
import 'package:e_commercee/features/shop/screens/roduct_review/widget/user_review.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';

class ProductReivewScreen extends StatelessWidget {
  const ProductReivewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Review & Rating"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Rating and reviews are verified and are from people who use the same type of device that you use."),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TOverallProductRating(),
            TRatingBarIndicator(rating: 3.5,),
            Text("12,611",style: Theme.of(context).textTheme.bodySmall,),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            UserReviewCard(),
            UserReviewCard(),
            UserReviewCard(),
            UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
