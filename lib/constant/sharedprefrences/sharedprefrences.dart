import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs{

  String token = 'token';
  String name ='name';
  String username='username';
  String email='email';
  String photo='photoo';
  static SharedPreferences? _prefs;
  Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future setLoginToken(String loginToken) async {
    return await _prefs?.setString(token, loginToken);
  }
  String? getLoginToken() {
    return _prefs?.getString(token);
  }
Future setNameToken(String NameToken) async {
    return await _prefs?.setString(name, NameToken);
}
String? getNameToken(){
    return _prefs?.getString(name);
}
Future setUserName(String UserNameToken)async{
    return _prefs?.setString(username, UserNameToken);

}
String? getusertoken(){
    return _prefs?.getString(username);
}
Future setemail(String Emailtoken)async{
    return await _prefs?.setString(email,Emailtoken);
}
 String? getemail(){
    return _prefs?.getString(email);
 }
  Future setphoto(String Phototoken)async{
    return await _prefs?.setString(photo,Phototoken);
  }
  String? getphoto(){
    return _prefs?.getString(photo);
  }
}