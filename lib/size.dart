import 'package:flutter/cupertino.dart';

double getScreeWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getDrawerWidth(BuildContext context) {
  return getScreeWidth(context) * 0.6;
}
