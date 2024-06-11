
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TTearmsAndConditionCheckBox extends StatelessWidget {
  const TTearmsAndConditionCheckBox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperfunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: TTexts.iAgreeTo,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: TTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                      dark ? TColors.white : TColors.primary)),
              TextSpan(
                  text: TTexts.and,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: TTexts.tearmsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                      dark ? TColors.white : TColors.primary)),
            ],
          ),
        )
      ],
    );
  }
}