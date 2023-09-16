import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:swishlist_ui/constant/sharedprefrences/sharedprefrences.dart';

Future<dynamic>updateprofileapi({
  required String name,
  required String gender,
  required String dob,
  required String occupation,
  required String relation,
  required String email,
  required String phone,
  required String alternatephone,
  required String homeadd,
  required String workadd,
  required String id,
  required String privacy,
})async{
  var headers = {
    'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
  };
  var request = http.MultipartRequest('POST', Uri.parse('https://api.swishlist.com/api/user/profile/update'));
  request.fields.addAll({
    'name': name,
    'gender': gender,
    'dob': dob,
    'occupation': occupation,
    'relation_status': relation,
    'email': email,
    'phone': phone,
    'alternate_phone': alternatephone,
    'home_address': homeadd,
    'work_address': workadd,
    'privacy_status':privacy ,
    'id': id
  });
  //request.files.add(await http.MultipartFile.fromPath('photo', '/path/to/file'));
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
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