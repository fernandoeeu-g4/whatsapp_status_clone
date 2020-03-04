import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class DartTheme {
  static final AppTheme theme = AppTheme(
      id: "dark",
      data: ThemeData(
        primaryColor: Color(0xff101D25),
        accentColor: Color(0xff17948B),
        bottomAppBarColor: Color(0xff232D36),
      ));
}
