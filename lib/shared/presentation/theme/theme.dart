import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'extra_colors.dart';

ColorScheme darkColorScheme = ColorScheme.fromSeed(
  error: const Color(0xFFFF6B6B),
  surface: const Color(0xFF121212),
  primary: AppColors.primary.withOpacity(0.8),
  onSurface: const Color(0xFFAAAAAA),
  seedColor: AppColors.primary.withOpacity(0.8),
  onPrimary: ExtraColors.black,
  brightness: Brightness.dark,
  background: const Color(0xFF1E1E1E),
  onBackground: ExtraColors.white,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  focusColor: darkColorScheme.primary,
  colorScheme: darkColorScheme,
  splashColor: const Color(0xFF2C2C2C),
  useMaterial3: true,
  scaffoldBackgroundColor: darkColorScheme.surface,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: TextStyle(
      color: ExtraColors.white,
      fontSize: 27.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.0,
    ),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: ExtraColors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    color: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0.5,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: const TextStyle(fontSize: 14.0, color: ExtraColors.grey),
    labelStyle: const TextStyle(fontSize: 14.0, color: ExtraColors.grey),
    focusColor: darkColorScheme.primary,
    errorMaxLines: 4,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
    prefixIconColor: ExtraColors.white,
    suffixIconColor: ExtraColors.white,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(13.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(13.0),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(13.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(13.0),
      borderSide: const BorderSide(
        width: 1.5,
        color: Color(0xFF4A4A4A),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(13.0),
      borderSide: const BorderSide(
        width: 1.5,
        color: Color(0xFFE57373),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(13.0),
      borderSide: const BorderSide(
        width: 1.5,
        color: Color(0xFFE57373),
      ),
    ),
    errorStyle: const TextStyle(
      color: Color(0xFFEF5350),
      fontSize: 13,
    ),
    filled: true,
    fillColor: const Color(0xFF2C2C2C),
    alignLabelWithHint: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      padding: const EdgeInsets.all(13.0),
      elevation: 0,
      alignment: Alignment.center,
      fixedSize: const Size(double.maxFinite, 50),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      enableFeedback: true,
      foregroundColor: ExtraColors.black,
      backgroundColor: darkColorScheme.primary,
      side: const BorderSide(
        width: 0,
        color: Colors.transparent,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      padding: const EdgeInsets.all(13.0),
      elevation: 0,
      alignment: Alignment.center,
      fixedSize: const Size(double.maxFinite, 50),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      enableFeedback: true,
      foregroundColor: darkColorScheme.primary,
      backgroundColor: ExtraColors.transparent,
      side: BorderSide(
        width: 1,
        color: darkColorScheme.primary,
      ),
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    shadowColor: Colors.transparent,
    dragHandleColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    modalBarrierColor: Colors.transparent,
    modalBackgroundColor: Colors.transparent,
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    },
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      foregroundColor: ExtraColors.white,
    ),
  ),
);
