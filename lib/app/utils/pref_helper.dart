import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  SharedPreferences _pref;
  PrefHelper(this._pref);

  Future isUserSplash(bool isSplash) async {
    _pref = await SharedPreferences.getInstance();
    return _pref.setBool('splash', isSplash);
  }

  Future getUserSplash() async {
    _pref = await SharedPreferences.getInstance();
    return _pref.getBool('splash');
  }
}
