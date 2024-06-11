import 'package:e_commercee/common/widgets/container/t_rounded_container.dart';
import 'package:e_commercee/common/widgets/texts/section_heading.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/images_strings.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: "Shipping Address",
          onPressed: () {},
          buttonTitle: "Change",
        ),
        Text(
          "Coding with I",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [
            Icon(Icons.phone,color: TColors.grey,size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text("+91-875-32254-32",style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.location_history,color: TColors.grey,size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text("South Liana, Maine 87657, USA",style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),
      ],
    );
  }
}
