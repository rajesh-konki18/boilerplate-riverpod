import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ThemeData useThemeCtx() {
  final context = useContext();
  return Theme.of(context);
}
