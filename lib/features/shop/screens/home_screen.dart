import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_v2/common/widget/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app_v2/common/widget/products/products_card/product_vertical_card.dart';
import 'package:flutter_ecommerce_app_v2/common/widget/texts/section_heading.dart';
import 'package:flutter_ecommerce_app_v2/features/shop/controllers/home/home_controller.dart';
import 'package:flutter_ecommerce_app_v2/features/shop/screens/widgets/home_categories.dart';
import 'package:flutter_ecommerce_app_v2/common/widget/textfields/search_bar.dart';
import 'package:flutter_ecommerce_app_v2/features/shop/screens/widgets/home_appbar.dart';
import 'package:flutter_ecommerce_app_v2/features/shop/screens/widgets/primary_header_container.dart';
import 'package:flutter_ecommerce_app_v2/features/shop/screens/widgets/promo_slider.dart';
import 'package:flutter_ecommerce_app_v2/utils/constants/image.dart';
import 'package:flutter_ecommerce_app_v2/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app_v2/utils/constants/texts.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Upper part
            Stack(
              children: [
                //Total height + 20
                SizedBox(height: AppSizes.homePrimaryHeaderHeight + 10),
                //Primary Header Container
                AppPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      AppHomeAppBar(),
                      SizedBox(height: AppSizes.spaceBtwSections),

                      AppHomeCategories(),
                    ],
                  ),
                ),
                //search bar
                AppSearchBar(),
              ],
            ),
            // SizedBox(height: AppSizes.defaultSpace),
            //lower part
            //banners
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  //slider banner
                  AppPromoSlider(
                    banners: [
                      AppImages.homeBanner1,
                      AppImages.homeBanner2,
                      AppImages.homeBanner3,
                      AppImages.homeBanner4,
                      AppImages.homeBanner5,
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  //products
                  //section headings
                  AppSectionHeading(
                    title: AppTexts.popularProducts,
                    onPressed: () {},
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  //Grid of product card
                  AppGridLayout(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return AppProductCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
