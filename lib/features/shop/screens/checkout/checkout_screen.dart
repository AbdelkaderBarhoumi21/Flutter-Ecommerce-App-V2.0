import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_v2/common/styles/padding.dart';
import 'package:flutter_ecommerce_app_v2/common/widget/appbar/appbar.dart';
import 'package:flutter_ecommerce_app_v2/common/widget/custom_shapes/rounded_container.dart';
import 'package:flutter_ecommerce_app_v2/common/widget/textfields/promo_code_field.dart';
import 'package:flutter_ecommerce_app_v2/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter_ecommerce_app_v2/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app_v2/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      //Appbar
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            children: [
              //items
              AppCartItems(showAddRemoveButtons: false),
              SizedBox(height: AppSizes.spaceBtwSections),
              //promo ocde text field
              AppPromoCodeField(),
              SizedBox(height: AppSizes.spaceBtwSections),
              //billing section
              AppRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(AppSizes.md),
                backgroundColor: Colors.transparent,
                child: Column(
                  children: [
                    //amount
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
