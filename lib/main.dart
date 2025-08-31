import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_v2/my_app.dart';

void main() {
  /// Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// Await Native Splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}
