import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? _sharedPrefs;
  String boolKey = "boolKey";
  String stringKey = "stringKey";

  init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  setBoolToSF({required bool isLight}) async {
    await _sharedPrefs!.setBool(
      boolKey,
      isLight,
    );
  }

  setStringToSF({required String lang}) async {
    await _sharedPrefs!.setString(
      stringKey,
      lang,
    );
  }

  String? get lang => _sharedPrefs!.getString(stringKey);

  bool? get isLight => _sharedPrefs!.getBool(boolKey);
}

final sharedPrefs = SharedPrefs();
