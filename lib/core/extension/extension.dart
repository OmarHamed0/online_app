 import 'package:flutter/cupertino.dart';
 import 'package:flutter_gen/gen_l10n/app_localizations.dart';

 extension AppLocalizationsExtension on BuildContext {
  AppLocalizations get local => AppLocalizations.of(this)!;
 }