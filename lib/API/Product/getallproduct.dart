import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:swishlist_ui/Constants/url.dart';

import '../../constant/sharedprefrences/sharedprefrences.dart';

Future<dynamic> getProductsApi() async{
  var headers = {
    'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
  };
  var request = http.Request('POST', Uri.parse('$baseurl/api/user/product'));
  request.bodyFields = {};
  request.headers.addAll(headers);
  print(headers);
  print(request.bodyFields);
  http.StreamedResponse response = await request.send();
  var resp = jsonDecode(await response.stream.bytesToString());
  if(response.statusCode == 200) {
    print(resp);
    return resp;
  } else{
    print(resp);
    print(response.statusCode);
    print(response.reasonPhrase);
    return resp;
  }
}