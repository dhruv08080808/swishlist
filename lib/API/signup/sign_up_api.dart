import 'dart:convert';

import 'package:http/http.dart' as http;
Future <dynamic> signupApi({
  required String email
}) async {
  var headers = {
    'Content-Type': 'application/x-www-form-urlencoded'
  };
  var request = http.Request('POST', Uri.parse('https://api.swishlist.com/api/signUp'));
  request.bodyFields = {
    'email': email,
  };
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  var resp = jsonDecode(await response.stream.bytesToString());
  print(resp);
  if (response.statusCode == 200) {
    return resp;
  } else {
    print(resp);
    print(response.reasonPhrase);
    print(response.statusCode);
    return resp;
  }

}