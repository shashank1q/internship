import 'package:flutter/material.dart';

class Responsive {
  static double getWidth(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }

  static double getHeight(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * percentage;
  }
}
