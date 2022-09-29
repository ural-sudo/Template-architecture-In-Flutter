

import 'package:shared_preferences/shared_preferences.dart';

class SharedManager {
  late final SharedPreferences pref;
  SharedManager(){
    SharedPreferences.getInstance().then((value){
      pref = value;
    });
  }
  Future<void> setStringValues (String key,dynamic value) async {
    await pref.setString(key, value);
  }

  Future<String> getStringValues (String key)async {
    return  pref.getString(key) ?? "null"; 
  }

}