import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../constant/sharedprefrences/sharedprefrences.dart';
Future<dynamic> getprofileapi()async{
  var headers = {
    'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
  };
  var request = http.Request('POST', Uri.parse('https://api.swishlist.com/api/user/profile'));
  request.bodyFields = {};
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
