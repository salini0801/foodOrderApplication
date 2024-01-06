import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/routes.dart';
import '../../../constant/strings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context);
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(children: [
        Image.asset(
          'assets/veg.jpg',
          height: 450,
          width: 600,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: getProportionateScreenHeight(65),
        ),
        Column(
          children: [
            Center(
              child: Text(
                MyStrings.title,
                style: style.textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(25)),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Text(
              MyStrings.subtitle,
              style: style.textTheme.bodyLarge!.copyWith(
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                  fontSize: getProportionateScreenWidth(18)),
            ),
            Text(
              MyStrings.lowtitle,
              style: style.textTheme.bodyLarge!.copyWith(
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                  fontSize: getProportionateScreenWidth(18)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(55),
            ),
            ElevatedButton(
              onPressed: () async {
                print('hi');
                Get.toNamed(
                  MyRoutes.order,
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                maximumSize: Size(getProportionateScreenHeight(550), 65),
                minimumSize: Size(getProportionateScreenHeight(35), 65),
                fixedSize: const Size(220, 85),
                backgroundColor: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/google.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      MyStrings.signin,
                      style: style.textTheme.bodyLarge!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(16)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
      
    );
  }
}
