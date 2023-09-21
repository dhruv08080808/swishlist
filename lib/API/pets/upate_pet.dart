import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:swishlist_ui/constant/sharedprefrences/sharedprefrences.dart';

Future<dynamic>updatepetsapi ({
  required String name,
  required String type,
  required String origin,
  required String privacy,
  required String photooooo,
})async{
  var headers = {
    'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
  };
  var request = http.MultipartRequest('POST', Uri.parse('https://api.swishlist.com/api/user/pet/store'));
  request.fields.addAll({
    'name': name,
    'type': type,
    'origin': origin,
    'privacy_status': privacy,

  });
  request.files.add(await http.MultipartFile.fromPath('photo', photooooo));
  request.headers.addAll(headers);
  print(request.fields);
  http.StreamedResponse response = await request.send();
  var resp=jsonDecode(await response.stream.bytesToString());
  if(response.statusCode==200){
    print(resp);
    return resp;
  } else{
    print(resp);
    print(response.statusCode);
    print(response.reasonPhrase);
    return resp;
  }

}