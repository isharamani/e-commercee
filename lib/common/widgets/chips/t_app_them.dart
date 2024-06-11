import 'package:e_commercee/common/widgets/chips/t_chip_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/evevated_button.dart';
import 'package:e_commercee/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commercee/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{

  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Popins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TtextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightoutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Popins",
      brightness: Brightness.dark,
      primaryColor: Colors.grey,
      textTheme: TtextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetThemeData,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkoutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}