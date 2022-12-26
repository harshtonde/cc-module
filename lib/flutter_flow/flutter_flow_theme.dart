// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primaryBtnText;
  late Color lineColor;
  late Color primary400;
  late Color success;
  late Color primaryBackGround;
  late Color customColor1;
  late Color blue;
  late Color lightBlue;
  late Color customColor2;
  late Color white70;
  late Color primary600;
  late Color negative;
  late Color positive;
  late Color overlay;
  late Color overlay0;
  late Color customColor4;
  late Color primary40;
  late Color background;
  late Color backgroundComponents;
  late Color viewStatementsColor;
  late Color buttonOutline;
  late Color containerColor;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFFE77817);
  late Color secondaryColor = const Color(0xFFD67B2C);
  late Color tertiaryColor = const Color(0xFFFEEEE5);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryBackground = const Color(0xFFF3F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color primary400 = Color(0xFFFCD9BB);
  late Color success = Color(0xFF29C99A);
  late Color primaryBackGround = Color(0xFFFFF2E3);
  late Color customColor1 = Color(0xFF3DAC75);
  late Color blue = Color(0xFF084B87);
  late Color lightBlue = Color(0xFF3B1C8C);
  late Color customColor2 = Color(0xFF30CC7A);
  late Color white70 = Color(0xB3FFFFFF);
  late Color primary600 = Color(0xFF5E27A5);
  late Color negative = Color(0xFFAC3E3E);
  late Color positive = Color(0xFF19DB8A);
  late Color overlay = Color(0xB3FFFFFF);
  late Color overlay0 = Color(0x00FFFFFF);
  late Color customColor4 = Color(0xFF090F13);
  late Color primary40 = Color(0x4EF58F22);
  late Color background = Color(0xFF1D2429);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color viewStatementsColor = Color(0xFFE0E3ED);
  late Color buttonOutline = Color(0xFFFEE3D4);
  late Color containerColor = Color(0xFFEEF0F5);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Mulish';
  TextStyle get title1 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 28,
      );
  String get title2Family => 'Mulish';
  TextStyle get title2 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  String get title3Family => 'Mulish';
  TextStyle get title3 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  String get subtitle1Family => 'Mulish';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );
  String get subtitle2Family => 'Mulish';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Mulish',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText1Family => 'Mulish';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  String get bodyText2Family => 'Mulish';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Mulish',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Mulish';
  TextStyle get title1 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );
  String get title2Family => 'Mulish';
  TextStyle get title2 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  String get title3Family => 'Mulish';
  TextStyle get title3 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  String get subtitle1Family => 'Mulish';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  String get subtitle2Family => 'Mulish';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Mulish',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText1Family => 'Mulish';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  String get bodyText2Family => 'Mulish';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Mulish',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Mulish';
  TextStyle get title1 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );
  String get title2Family => 'Mulish';
  TextStyle get title2 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  String get title3Family => 'Mulish';
  TextStyle get title3 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  String get subtitle1Family => 'Mulish';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  String get subtitle2Family => 'Mulish';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Mulish',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText1Family => 'Mulish';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  String get bodyText2Family => 'Mulish';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Mulish',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFFF58F22);
  late Color secondaryColor = const Color(0xFFF58F22);
  late Color tertiaryColor = const Color(0xFFFEEEE5);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryBackground = const Color(0xFF11212F);
  late Color secondaryBackground = const Color(0xFF0A141D);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFF1D394F);
  late Color primary400 = Color(0x7FFC964D);
  late Color success = Color(0xFF29C99A);
  late Color primaryBackGround = Color(0xFFEE8020);
  late Color customColor1 = Color(0xFF18A443);
  late Color blue = Color(0xFF084B87);
  late Color lightBlue = Color(0xFF6B00FF);
  late Color customColor2 = Color(0xFF30CC7A);
  late Color white70 = Color(0xB3FFFFFF);
  late Color primary600 = Color(0xFF5E27A5);
  late Color negative = Color(0xFFF45458);
  late Color positive = Color(0xFF19DB8A);
  late Color overlay = Color(0xBD0A141D);
  late Color overlay0 = Color(0x001A1F24);
  late Color customColor4 = Color(0xFF090F13);
  late Color primary40 = Color(0x4EF58F22);
  late Color background = Color(0xFF1D2429);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color viewStatementsColor = Color(0xFFE0E3ED);
  late Color buttonOutline = Color(0xFFFEE3D4);
  late Color containerColor = Color(0xFFEEF0F5);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
