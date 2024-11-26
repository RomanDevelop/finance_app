import 'package:dashboard_app/theme/app_theme.dart';
import 'package:dashboard_app/theme/app_theme_data.dart';
import 'package:flutter/material.dart';

extension AppThemeContextExtension on BuildContext {
  AppThemeData get theme {
    final widget = dependOnInheritedWidgetOfExactType<AppTheme>();
    return widget?.data ?? mainAppTheme;
  }

  AppColors get appColors => theme.colors;

  AppTextStyles get textTheme => theme.text;
}
