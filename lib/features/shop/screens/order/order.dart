import 'package:e_commercee/common/widgets/appbar/appbar.dart';
import 'package:e_commercee/features/shop/screens/order/widgets/order_list.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("My Orders",style: Theme.of(context).textTheme.headlineSmall,),),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TOrderListScreen(),
      ),
    );
  }
}
