import 'package:e_commercee/common/widgets/appbar/appbar.dart';
import 'package:e_commercee/common/widgets/container/t_rounded_container.dart';
import 'package:e_commercee/features/personalization/screens/address/add_new_address.dart';
import 'package:e_commercee/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:() =>Get.to(()=>AddNewAddressScreen()),
      backgroundColor: TColors.primary,
      child: Icon(Iconsax.add,color: TColors.white,),),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Address",style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
             TSingleAddress(selectedAddress: false),
             TSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
