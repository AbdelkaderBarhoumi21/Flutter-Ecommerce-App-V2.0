import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_v2/utils/constants/colors.dart';

class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading({
    required this.title,
    this.textColor,
    this.buttonTitle = 'View All',
    this.onPressed,
    super.key,
  });
  final Color? textColor;
  final String title, buttonTitle;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.clip,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonTitle,
            style: Theme.of(
              context,
            ).textTheme.bodySmall!.apply(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
