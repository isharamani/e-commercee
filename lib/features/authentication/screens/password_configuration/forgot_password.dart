import 'package:e_commercee/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForGotPassword extends StatelessWidget {
  const ForGotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TTexts.forgotpasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.forgotpasswordsubTitle,style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSizes.spaceBtwSections*2,),
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            SizedBox(height:30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                  Get.to(const Resetpassword());
              },child: const Text(TTexts.submit),),
            )
          ],
        ),
      ),
    );
  }
}
