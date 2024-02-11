import 'package:flutter/cupertino.dart';

class languageNotifier extends ChangeNotifier {
   languageNotifier({Key? key}) ;

  Locale _locale = Locale('en'); // Default language is English

  Locale get locale => _locale;

  void setLocale(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }
}