import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

import 'package:woodpecker/general/localizations/default_localization.dart';

class DefaultLocalizationsDelegate extends LocalizationsDelegate<DefaultLocalizations> {
  const DefaultLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  @override
  Future<DefaultLocalizations> load(Locale locale) {
    return SynchronousFuture<DefaultLocalizations>(DefaultLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate old) => false;
}