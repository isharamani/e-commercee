import 'package:e_commercee/common/widgets/appbar/appbar.dart';
import 'package:e_commercee/common/widgets/appbar/tabbar.dart';
import 'package:e_commercee/common/widgets/custom_shape/container/search_container.dart';
import 'package:e_commercee/common/widgets/layout/grid_layout.dart';
import 'package:e_commercee/common/widgets/texts/section_heading.dart';
import 'package:e_commercee/features/shop/screens/store/widget/category_tab.dart';
import 'package:e_commercee/utils/constants/colors.dart';
import 'package:e_commercee/utils/constants/sizes.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/brand/t_brand_card.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(onPressed: () {}, iconColor: Colors.black)
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperfunction.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const TSearchContainer(
                          text: "Search in Store",
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        TSectionHeading(
                          title: "Featured Brands",
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),
                        TGridLayout(
                            mainAxisExtent: 80,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return const TBrandCard(
                                showBorder: false,
                              );
                            }),
                      ],
                    ),
                  ),
                  bottom: const TTabBar(
                    tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Furniture"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Cloths"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      ),
                    ],
                  ))
            ];
          },
          body: const TabBarView(
            children: [
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
