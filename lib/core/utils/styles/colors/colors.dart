import 'package:flutter/material.dart';

part 'colors_dark.dart';
part 'colors_light.dart';

class UIColors {
  static const _ColorsLight light = _ColorsLight();
  static const _ColorsDark dark = _ColorsDark();

  static Gradient get primaryGradient => LinearGradient(
        colors: [light.primary, light.primary.withOpacity(0.6)],
      );
  static Gradient get secondaryGradient => LinearGradient(
        colors: [light.secondary, light.secondary.withOpacity(0.8)],
      );
}
