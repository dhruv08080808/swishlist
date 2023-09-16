import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:swishlist_ui/constant/sharedprefrences/sharedprefrences.dart';

Future<dynamic>logoutapi()async{
  var headers = {
    'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
  };
  var request = http.Request('POST', Uri.parse('https://api.swishlist.com/api/logout'));
  request.bodyFields = {};
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  var resp= jsonDecode(await response.stream.bytesToString());
  if(response.statusCode == 200)  {
    print(resp);
    return resp;
  } else {
    print(resp);
    print(response.statusCode);
    print(response.reasonPhrase);
    return resp;
  }
}