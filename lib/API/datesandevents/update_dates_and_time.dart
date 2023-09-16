import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:swishlist_ui/constant/sharedprefrences/sharedprefrences.dart';

Future<dynamic>updatedatesandeventapi({
  required String name,
  required String date,
  required String type,
  required String privacy,
  required String id,
})async{
var headers = {
'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
};
var request = http.MultipartRequest('POST', Uri.parse('https://api.swishlist.com/api/user/eventDate/update'));
request.fields.addAll({
'name': name ,
'date': date,
'type': type,
'privacy_status': privacy,
'id': id,
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