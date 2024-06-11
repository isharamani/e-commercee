import 'package:e_commercee/common/widgets/appbar/appbar.dart';
import 'package:e_commercee/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:e_commercee/common/widgets/list_titles/setting_menu_title.dart';
import 'package:e_commercee/common/widgets/texts/section_heading.dart';
import 'package:e_commercee/features/personalization/screens/address/address.dart';
import 'package:e_commercee/features/personalization/screens/profile/widget/profile.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_titles/user_profile_title.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                 TUserProfileTile(onPressed: () => Get.to(()=>ProfileScreen()),),
                 SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const TSettingMenuTitle(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subtitle: "Set shopping delivery address",
                   // onTap:
                    //     () {
                    //   Get.to(UserAddressScreen());
                    // },
                  ),
                  const TSettingMenuTitle(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subtitle: "Add, remove products and move to checkout",
                  ),
                   TSettingMenuTitle(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subtitle: "In-progress and Completed Orders",
                    onTap: () {
                      Get.to(UserAddressScreen());
                    },
                  ),
                  const TSettingMenuTitle(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subtitle: "Withdraw balance to registered bank account",
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subtitle: "List of all the discounted coupons",

                  ),
                   TSettingMenuTitle(
                    icon: Iconsax.notification,
                    title: "Notification",
                    subtitle: "Set any kind of notification message",
                  ),
                   TSettingMenuTitle(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subtitle: "Manage date usage and connected accounts",
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: "App Settings",showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSettingMenuTitle(icon: Iconsax.document_upload, title: "Load Data", subtitle: "Upload Data to your Cloud Firebase"),
                  TSettingMenuTitle(icon: Iconsax.location, title: "Geolocation", subtitle: "Set recommendation bases on location",trailing: Switch(value: true,onChanged: (value){},),),
                  TSettingMenuTitle(icon: Iconsax.security_user, title: "Safe Mode", subtitle: "Search result is safe for all ages",trailing: Switch(value: false,onChanged: (value){},),),
                  TSettingMenuTitle(icon: Iconsax.image, title: "HD Image Quality", subtitle: "Set image quality to be seen",trailing: Switch(value: false,onChanged: (value){},),),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(width: double.infinity,
                  child: OutlinedButton(onPressed: () {

                  },child: const Text("Logout"),),),
                  const SizedBox(height: TSizes.spaceBtwSections*2.5,)


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
