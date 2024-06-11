import 'package:e_commercee/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

import 'custom_themes/evevated_button.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "poppins",
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      chipTheme: TChipTheme.lightChipTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TtextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightoutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "poppins",
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TtextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetThemeData,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkoutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}