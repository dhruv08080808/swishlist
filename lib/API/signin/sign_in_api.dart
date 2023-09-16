import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import '../../Models/login_model.dart';

Future <dynamic> getsigninapi({
  required String email,
  required String password,
})async{
  var headers = {
    'Content-Type': 'application/x-www-form-urlencoded'
  };
  var request = http.Request('POST', Uri.parse('https://api.swishlist.com/api/login'));
  request.bodyFields = {
    'email': email,
    'password': password
  };
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  var resp=jsonDecode(await response.stream.bytesToString());
  print(resp);
  if(response.statusCode == 200) {
    if(resp['status'] == true){
      return LoginResponse.fromJson(resp);
    }
    else {
      Fluttertoast.showToast(msg: 'Please Enter Valid Login Details');
      return LoginResponse(
        code: 1,
        status: false,
        message: 'message',
        data: UserLogin(
            id: 1,
            name: 'name',
            username: 'username',
            email: 'email',
            phone: 'phone',
            photo: 'photo'),
        token: 'token',
      );
    }
  } else {
    print(resp);
    print(response.statusCode);
    print(response.reasonPhrase);
    return false;
  }
}