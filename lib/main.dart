import 'package:ecommerce/features/orders/ui/orders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constant/routes.dart';
import 'constant/theme.dart';
import 'features/login/ui/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //scaffoldMessengerKey: CustomSnackbar.messagekey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyThemes.lightTheme,
      initialRoute: MyRoutes.login,
      getPages: [
        GetPage(name: MyRoutes.login, page: (() => const LoginPage())),
        GetPage(name: MyRoutes.order, page: (() => const OrderScreen()))
      ],
    );
  }
}
