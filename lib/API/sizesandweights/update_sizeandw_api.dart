import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:swishlist_ui/constant/sharedprefrences/sharedprefrences.dart';

Future<dynamic> updatesizes({
  required String waist,
  required String shirt,
  required String shoes,
  required String bed,
  required String idd,
  required String privacy,
})async{


  var headers = {
    'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
  };
  var request = http.MultipartRequest('POST', Uri.parse('https://api.swishlist.com/api/user/sizeWeight/update'));
  request.fields.addAll({
    'waist': waist,
    'shirt': shirt,
    'shoes': shoes,
    'bed': bed,
    'privacy_status': privacy,
    'id': idd,
  });

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