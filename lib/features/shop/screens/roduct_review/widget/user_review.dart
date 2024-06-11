import 'package:e_commercee/common/widgets/container/t_rounded_container.dart';
import 'package:e_commercee/common/widgets/products/rating/rating_indicator.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/images_strings.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1),),
                SizedBox(width: TSizes.spaceBtwItems,),
                Text("john Doe",style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: () {

            }, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(width: TSizes.spaceBtwItems,),
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            Text("01 Nov, 2024",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        ReadMoreText("The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessy. Great job!",
        trimLines: 2,
        trimMode: TrimMode.Line,
        trimExpandedText: "show less",
        trimCollapsedText: "show more",
        moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),),
        TRoundedContainer(
          backGroundColor: dark?TColors.darkgrey:TColors.grey,
          child: Padding(padding: EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("I's Store",style: Theme.of(context).textTheme.titleMedium,),
                  Text("02 Nov, 2024",style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              SizedBox(height: TSizes.spaceBtwItems,),
              ReadMoreText("The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessy. Great job!",
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: "show less",
                trimCollapsedText: "show more",
                moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
                lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),),
            ],
          ),),
        ),
        SizedBox(height: TSizes.spaceBtwSections,)
      ],
    );
  }
}
