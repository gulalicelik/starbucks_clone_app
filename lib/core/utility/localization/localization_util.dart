import 'package:flutter/material.dart';

enum LocalizationLocals { init, tr, en }

extension LocalizationLocalsExtension on LocalizationLocals {
  Locale get rawValue {
    switch (this) {
      case LocalizationLocals.init:
        return const Locale('tr', 'TR');
      case LocalizationLocals.tr:
        return const Locale('tr', 'TR');
      case LocalizationLocals.en:
        return const Locale('en', 'US');

      default:
        return const Locale('tr', 'TR');
    }
  }

  List<Locale> get supportedLocales =>
      [const Locale('en', 'US'), const Locale('tr', 'TR')];
}
