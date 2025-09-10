import 'package:flutter_ecommerce_app_v2/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_ecommerce_app_v2/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  //static → only one global copy exists for the entire class.
  static AuthenticationRepository get instance => Get.find();
  final storage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
    super.onReady();
  }

  void screenRedirect() {
    storage.writeIfNull('isFirstTime', true);
    storage.read("isFirstTime") == true
        ? Get.to(() => OnboardingScreen())
        : Get.to(() => LoginScreen());
  }
}
