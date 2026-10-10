import 'package:fecommerce/routes/app_routes.dart';
import 'package:fecommerce/view/cart_view.dart';
import 'package:fecommerce/view/home_view.dart';
import 'package:fecommerce/view/login_view.dart';
import 'package:fecommerce/view/product_view.dart';
import 'package:fecommerce/view/register_view.dart';
import 'package:fecommerce/view/splash_view.dart';
import 'package:get/get.dart';

// direct to pages
class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splash, page: () => SplashView()),
    GetPage(name: AppRoutes.login, page: () => LoginView()),
    GetPage(name: AppRoutes.register, page: () => RegisterView()),
    GetPage(name: AppRoutes.home, page: () => HomeView()),
    GetPage(name: AppRoutes.product, page: () => ProductView()),
    GetPage(name: AppRoutes.cart, page: () => CartView()),
  ];
}
