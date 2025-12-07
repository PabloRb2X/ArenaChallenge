import 'package:flutter/material.dart';

abstract class GlobalErrorUtils {
  static EdgeInsets globalPadding = EdgeInsets.all(16.0);
  static EdgeInsets globalTopPadding = EdgeInsets.only(top: 12);
  static const error = 'An error has happened: ';
  static const retry = 'Retry';
}
