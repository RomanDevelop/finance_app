import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  TextStyle withColor(Color? color) => copyWith(color: color);

  TextStyle get makeBold => copyWith(fontWeight: FontWeight.w700);

  TextStyle get makeSemiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get makeMedium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get makeRegular => copyWith(fontWeight: FontWeight.w400);
}
