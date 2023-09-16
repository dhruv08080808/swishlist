
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:swishlist_ui/constant/sharedprefrences/sharedprefrences.dart';
Future<dynamic> updateprofileapi({
  required String fullname,//yahi se mil jayega
  required String username,//yahi se mil jayega
  required String phone,// yahi se mil jayega
  required String photoo,// yahi
  required String email,// create acc wali screen se ayega


})async{
  var headers = {
    'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
  };
  var request = http.MultipartRequest('POST', Uri.parse('https://api.swishlist.com/api/updateProfile'));
  request.fields.addAll({
    'name': fullname,
    'username': username,
    'phone': phone,
    'email' :email
  });
  request.files.add(await http.MultipartFile.fromPath('photo',photoo));
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  print(request.fields);
  print(request.files);
  print(request.headers);
 var resp=jsonDecode( await response.stream.bytesToString());
 print(resp);
  if (response.statusCode == 200) {
    print(resp);
    return resp;
  } else {
    print(resp);
    print(response.reasonPhrase);
    print(response.statusCode);
    return resp;
  }


}