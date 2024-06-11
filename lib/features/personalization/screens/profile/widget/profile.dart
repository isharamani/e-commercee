import 'package:e_commercee/common/widgets/appbar/appbar.dart';
import 'package:e_commercee/common/widgets/images/t_circular_iamge.dart';
import 'package:e_commercee/common/widgets/texts/section_heading.dart';
import 'package:e_commercee/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:e_commercee/utils/constants/images_strings.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {}, child: Text("Change Profile Picture"))
                  ],
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TProfileMenu(
                onPressed: () {},
                title: "Name",
                value: "Coding with I",
              ),
              TProfileMenu(
                onPressed: () {},
                title: "Username",
                value: "coding_with_i",
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSectionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TProfileMenu(
                onPressed: () {},
                title: "User ID",
                value: "123456",
                icon: Iconsax.copy,
              ),
              TProfileMenu(
                onPressed: () {},
                title: "E-mail",
                value: "coding_with_i",
              ),
              TProfileMenu(
                onPressed: () {},
                title: "Phone Number",
                value: "+91-123-3456789",
              ),
              TProfileMenu(
                onPressed: () {},
                title: "Gender",
                value: "Female",
              ),
              TProfileMenu(
                onPressed: () {},
                title: "Date of Birth",
                value: "19 Jan, 2005",
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text("Close Account",style: TextStyle(color: Colors.red),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
