import 'package:flutter/material.dart';

import 'package:woodpecker/internal/locale/abstract_locale_string.dart';
import 'package:woodpecker/internal/locale/locale_string_en.dart';
import 'package:woodpecker/internal/locale/locale_string_zh.dart';

class DefaultLocalizations {
  final Locale locale;

  DefaultLocalizations(this.locale);

  AbstractLocaleString get localeString => _localizedValues[locale.languageCode];

  static Map<String, AbstractLocaleString> _localizedValues = {
    'en': new LocaleStringEn(),
    'zh': new LocaleStringZh(),
  };

  static DefaultLocalizations of(BuildContext context) {
    return Localizations.of<DefaultLocalizations>(context, DefaultLocalizations);
  }
}
