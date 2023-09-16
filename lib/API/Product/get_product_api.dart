import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:swishlist_ui/constant/sharedprefrences/sharedprefrences.dart';

Future<dynamic>getproductapi({
  required String type,
  required String name,
  required String link,
  required String price,
  required String purchase_date,
  required String privacy,
  required String photo,
})async{
  var headers = {
    'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
  };
  var request = http.MultipartRequest('POST', Uri.parse('https://api.swishlist.com/api/user/product/store'));
  request.fields.addAll({
    'type': type,
    'name': name,
    'link': link,
    'price': price,
    'purchased_date':purchase_date ,
    'privacy_status': privacy,
    'photo_url': photo,
  });

  request.files.add(await http.MultipartFile.fromPath('photo', '/C:/Users/rit12/Downloads/aeps_ministatement.blade.php'));
  request.headers.addAll(headers);
  print(headers);
  print(request.fields);
  http.StreamedResponse response = await request.send();

  var resp = jsonDecode(await response.stream.bytesToString());
  if (response.statusCode == 200) {
    print(resp);
    return resp;
  } else {
    print(resp);
    print(response.statusCode);
    print(response.reasonPhrase);
    return resp;
  }
}