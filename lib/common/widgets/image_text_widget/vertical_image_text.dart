import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backGroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backGroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
          child: Column(
            children: [
              Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(TSizes.sm),
                decoration: BoxDecoration(
                    color: backGroundColor ??
                        (dark ? TColors.black : TColors.white),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: dark ? TColors.light : TColors.dark,
                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              SizedBox(
                  width: 55,
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ))
            ],
          )),
    );
  }
}
