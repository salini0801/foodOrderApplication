import 'package:flutter/material.dart';

extension colors on ColorScheme {
  static MaterialColor primary_app = const MaterialColor(
    0xffFC3079,
    <int, Color>{
      50: primary,
      100: primary,
      200: primary,
      300: primary,
      400: primary,
      500: primary,
      600: primary,
      700: primary,
      800: primary,
      900: primary,
    },
  );

  static const Color primary2 = Color(0xff1A237E);

  static const Color primary = Color(0xFF5D5FEF);
  //static const Color primaryColor = Color(0xFF5D5FEF);

  static const Color secondary = Color(0xff3949AB);
  static Color appcolor = const Color.fromARGB(224, 100, 56, 201);

  Color get baseColor => Colors.black26;
  Color get highlightColor => Colors.black26;
  Color get btnColor => brightness == Brightness.dark ? whiteTemp : primary;

  Color get lightWhite =>
      brightness == Brightness.dark ? darkColor : const Color(0xffF6F6F6);

  Color get fontColor =>
      brightness == Brightness.dark ? whiteTemp : const Color(0xff212121);
  Color get sub =>
      brightness == Brightness.dark ? whiteTemp : const Color(0xff8FA8DA);

  Color get gray =>
      brightness == Brightness.dark ? darkColor3 : const Color(0xfff0f0f0);

  Color get error => brightness == Brightness.dark
      ? const Color(0xff500020)
      : const Color(0xff500020);
  Color? get simmerBase =>
      brightness == Brightness.dark ? darkColor2 : Colors.grey[300];

  Color? get simmerHigh =>
      brightness == Brightness.dark ? darkColor : Colors.grey[100];

  static Color bgShade = const Color(0xffF1F1F1);

  static Color darkIcon = const Color(0xff9B9B9B);
  static Color subitle = const Color(0xff8FA8DA);
  static const Color lightWhite2 = Color(0xffEEF2F3);

  static const Color yellow = Color(0xfffdd901);

  static const Color red = Colors.red;

  Color get lightBlack =>
      brightness == Brightness.dark ? whiteTemp : const Color(0xff52575C);

  Color get lightBlack2 =>
      brightness == Brightness.dark ? Colors.white70 : const Color(0xff999999);

  static const Color darkColor = Color(0xff1E2829);
  static const Color darkColor2 = Color(0xff303E40);
  static const Color darkColor3 = Color(0xff465a5d);

  Color get white =>
      brightness == Brightness.dark ? darkColor2 : const Color(0xffFFFFFF);
  static const Color whiteTemp = Color(0xffFFFFFF);

  Color get black =>
      brightness == Brightness.dark ? whiteTemp : const Color(0xff000000);

  static const Color white10 = Colors.white10;
  static const Color white30 = Colors.white30;
  Color get white70 =>
      brightness == Brightness.dark ? Colors.black87 : Colors.white70;

  static const Color black54 = Colors.black54;
  static const Color black12 = Colors.black12;
  static const Color disableColor = Color(0xffEEF2F9);

  static const Color blackTemp = Color(0xff000000);

  Color get black26 => brightness == Brightness.dark ? white30 : Colors.black26;
  static const Color cardColor = Color(0xffE8EAF6);

  Color get back1 => brightness == Brightness.dark
      ? const Color(0xff1E3039)
      : const Color(0x66a2d8fe);

  Color get back2 => brightness == Brightness.dark
      ? const Color(0xff09202C)
      : const Color(0x66bdb1ff);

  Color get back3 => brightness == Brightness.dark
      ? const Color(0xff10101E)
      : const Color(0x66EFAFBF);

  Color get back4 => brightness == Brightness.dark
      ? const Color(0xff171515)
      : const Color(0x66F9DED7);

  Color get back5 => brightness == Brightness.dark
      ? const Color(0xff0F1412)
      : const Color(0x66C6F8E5);
}

class MyColors {
  static MaterialColor primary_app = const MaterialColor(
    0xff4a3f95,
    <int, Color>{
      50: primaryColor,
      100: primaryColor,
      200: primaryColor,
      300: primaryColor,
      400: primaryColor,
      500: primaryColor,
      600: primaryColor,
      700: primaryColor,
      800: primaryColor,
      900: primaryColor,
    },
  );
  // static Color appcolor = Color(int.parse(appcolors));
  static Color appcolor = const Color(0xFF5b4fbc);
  //     Color(int.parse(_productsProvider.getUiList.first.aiColorcode));
  static const Color primaryColor = Color(0xFF5D5FEF);

  static const Color accentsColors = Color(0xFFf6f7fb);
  static const Color lightGray = Color(0xFF797979);
  static const Color Gray = Color(0xFFB2B2B2);
  static const Color darkGray = Color(0xFF313131);
  static const Color colorLight = Color(0xFFD9D9D9);
  static const Color lightBlueShade = Color(0xFF7FC6F4);
  static const Color blueShade = Color(0xFFB3E5FC);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color black87 = Color(0xDD000000);
  static const Color black54 = Color(0x8A000000);
  static const Color blue = Color(0xFF4273C4);
  static const Color orange = Color(0xFFEE7D31);
  static const Color boxOrange = Color(0xFFFF5A11);
  static const Color yellow = Color(0xFFFFC711);
  static const Color barBlue = Color(0xFF599CD3);
  static const Color pink = Color.fromARGB(83, 211, 157, 162);
  static const Color red = Color.fromARGB(239, 233, 201, 138);
  static const Color skyblue = Color(0x004079ed);
  static const Color lightgreen = Color(0x00dcfce7);

  ///TextColors
  static const Color textColor1b1c20 = Color(0xFF1B1C20);
  static const Color errorColor = Color(0xFFff0000);
  static const Color activeColor = Color(0xFFffeae9);
  static const Color textGreen = Color(0xFF71a147);
  static const Color boxGreen = Color(0x00FA6A02);
}
