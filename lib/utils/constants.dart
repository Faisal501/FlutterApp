import 'package:shared_preferences/shared_preferences.dart';

class Constants {
  static SharedPreferences prefs =
      prefs.setBool("LoggedIn", false) as SharedPreferences;
  //? SharedPreferences is used to to navigate through the different pages
  //* specially login etc.
}
