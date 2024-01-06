import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constant/strings.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final style = Theme.of(context);
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(50),
            left: getProportionateScreenHeight(20),
          ),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.locationDot,
                        size: 30,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Text(
                        MyStrings.office,
                        style: style.textTheme.bodyLarge!.copyWith(
                          fontSize: getProportionateScreenHeight(25),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Icon(
                        FontAwesomeIcons.chevronDown,
                        size: getProportionateScreenHeight(20),
                        color: Colors.black45,
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Text(MyStrings.address,
                      style: style.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontSize: getProportionateScreenHeight(16))),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.black.withOpacity(0.9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      width: getProportionateScreenWidth(330),
                      height: getProportionateScreenHeight(185),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyStrings.offer,
                                style: style.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: getProportionateScreenHeight(18)),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                MyStrings.bending,
                                style: style.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: getProportionateScreenHeight(18)),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              ElevatedButton(
                                onPressed: () async {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    backgroundColor: Colors.orange,
                                    fixedSize: const Size(128, 10)),
                                child: Text(
                                  MyStrings.ordernow,
                                  style: style.textTheme.bodyLarge!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          getProportionateScreenHeight(16)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 150, top: 40, right: 0),
                          child: Image.asset(
                            'assets/burger.png',
                            height: 480,
                            width: 650,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25),
                  ),
                  TextField(
                    style: style.textTheme.bodyMedium!.copyWith(),
                    cursorColor: Colors.black.withOpacity(0.3),
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        maxWidth: getProportionateScreenWidth(335),
                        minWidth: mediaQuery.width * 0.1,
                        minHeight: getProportionateScreenHeight(55),
                        maxHeight: getProportionateScreenHeight(65),
                      ),
                      contentPadding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 5, right: 5),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        size: getProportionateScreenHeight(28),
                        color: Colors.orange,
                      ),
                      suffixIcon: Icon(
                        Icons.local_restaurant_outlined,
                        size: getProportionateScreenHeight(28),
                        color: Colors.black54,
                      ),
                      hintText: MyStrings.hint,
                      hintStyle: style.textTheme.bodyMedium!.copyWith(
                          fontSize: getProportionateScreenHeight(16),
                          color: Colors.black54),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.black87)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.black87)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.black87)),
                      focusColor: Colors.grey.shade300,
                      hoverColor: Colors.grey.shade300,
                    ),
                    onChanged: (value) async {},
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 150.0,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                color: Colors.grey.shade200,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: SizedBox(
                                  height: getProportionateScreenHeight(120),
                                  width: getProportionateScreenWidth(110),
                                  child: Image.asset('assets/pizza.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  MyStrings.pizza,
                                  textAlign: TextAlign.center,
                                  style: style.textTheme.bodyLarge!.copyWith(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          getProportionateScreenHeight(16)),
                                ),
                              ),
                            ],
                          ),
                          // 2
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                color: Colors.grey.shade200,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: SizedBox(
                                  height: getProportionateScreenHeight(120),
                                  width: getProportionateScreenWidth(110),
                                  child: Image.asset('assets/burg.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  MyStrings.burger,
                                  textAlign: TextAlign.center,
                                  style: style.textTheme.bodyLarge!.copyWith(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          getProportionateScreenHeight(16)),
                                ),
                              ),
                            ],
                          ),
                          // 3
                          // 2
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                color: Colors.grey.shade200,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: SizedBox(
                                  height: getProportionateScreenHeight(120),
                                  width: getProportionateScreenWidth(110),
                                  child: Image.asset('assets/healthy.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  MyStrings.healthy,
                                  textAlign: TextAlign.center,
                                  style: style.textTheme.bodyLarge!.copyWith(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          getProportionateScreenHeight(16)),
                                ),
                              ),
                            ],
                          ),
                          //4
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                color: Colors.grey.shade200,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: SizedBox(
                                  height: getProportionateScreenHeight(120),
                                  width: getProportionateScreenWidth(110),
                                  child: Image.asset('assets/briyani.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  MyStrings.briyani,
                                  textAlign: TextAlign.center,
                                  style: style.textTheme.bodyLarge!.copyWith(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          getProportionateScreenHeight(16)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                  Text(
                    MyStrings.restaurant,
                    style: style.textTheme.bodyLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenHeight(16)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(180),
                            height: getProportionateScreenHeight(285),
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/domino.png',
                                  height: 350,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                MyStrings.dominotitle,
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(8),
                              ),
                              Text(
                                '4.2 * (10 K+) 25 mins',
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(8),
                              ),
                              Text(
                                'Pizzas,Italian,Pastas',
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.normal,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Pimple Saudagar',
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.normal,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(16),
                              ),
                              Text(
                                'FREE DELIVERY',
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                      //
                      Row(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(180),
                            height: getProportionateScreenHeight(285),
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/hotel.jpg',
                                  height: 350,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                MyStrings.dominotitle,
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(8),
                              ),
                              Text(
                                '4.2 * (10 K+) 25 mins',
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(8),
                              ),
                              Text(
                                'Pizzas,Italian,Pastas',
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.normal,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Pimple Saudagar',
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.normal,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(16),
                              ),
                              Text(
                                'FREE DELIVERY',
                                style: style.textTheme.bodyLarge!.copyWith(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: getProportionateScreenHeight(16)),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(color: Colors.orange),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.compass,
              color: Colors.orange,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.orange,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
