import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  SharedPreferences? _pref;
  Future<bool> isUserSplash(bool isSplash) async {
    _pref = await SharedPreferences.getInstance();
    return _pref!.setBool('splash', isSplash);
  }

  Future<bool> getUserSplash() async {
    _pref = await SharedPreferences.getInstance();
    return _pref!.getBool('splash') ?? false;
  }
}
