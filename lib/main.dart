// import 'package:fecommerce/view/home_view.dart';
import 'package:fecommerce/binding/controller_binding.dart';
import 'package:fecommerce/routes/app_pages.dart';
import 'package:fecommerce/view/login_view.dart';
import 'package:fecommerce/view/register_view.dart';
import 'package:fecommerce/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialBinding: ControllerBinding(),
      getPages: AppPages.pages,
      home: SplashView(),
    );
  }
}
