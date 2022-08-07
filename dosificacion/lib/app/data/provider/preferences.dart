import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _alturaModulo1 = '';
  static String _alturaModulo2 = '';

  static Future int() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get alturaModulo1 =>
      _prefs.getString('alturaModulo1') ?? _alturaModulo1;
  static String get alturaModulo2 =>
      _prefs.getString('alturaModulo2') ?? _alturaModulo2;

  static set alturaModulo1(String value) {
    _alturaModulo1 = value;
    _prefs.setString('alturaModulo1', value);
  }

  static set alturaModulo2(String value) {
    _alturaModulo2 = value;
    _prefs.setString('alturaModulo2', value);
  }
}
