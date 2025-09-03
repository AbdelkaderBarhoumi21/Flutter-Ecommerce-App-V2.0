import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_v2/features/shop/screens/widgets/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppPrimaryHeaderContainer(child: Column(children: [])),
    );
  }
}
