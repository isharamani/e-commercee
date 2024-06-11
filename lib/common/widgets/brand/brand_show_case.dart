import 'package:e_commercee/common/widgets/brand/t_brand_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../container/t_rounded_container.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.imagess,
  });

  final List<String> imagess;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderCOlor: TColors.darkgrey,
      backGroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Row(
              children:imagess.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,contex){
    return Expanded(child: TRoundedContainer(
      height: 100,
      backGroundColor: THelperfunction.isDarkMode(contex)?TColors.darkgrey:TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(fit: BoxFit.contain,image: AssetImage(image),),
    ));
  }
}
