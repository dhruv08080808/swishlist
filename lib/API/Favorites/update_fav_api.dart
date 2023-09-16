import 'dart:convert';

import 'package:http/http.dart'as http;

import '../../constant/sharedprefrences/sharedprefrences.dart';

Future<dynamic>updatefav({
  required String id,
  required String cars,
  required String bikes,
  required String movies,
  required String shows,
  required String foods,
  required String gadgets,
  required String superheroes,
  required String actors,
  required String actresses,
  required String singers,
  required String players,
  required String cities,
  required String countries,
  required String restaurants,
  required String hotels,
  required String privacy,

})async{
  var headers = {

    'Authorization': 'Bearer ${SharedPrefs().getLoginToken()}'
  };
  var request = http.Request('POST', Uri.parse('https://api.swishlist.com/api/user/favourite/update'));
  request.bodyFields = {
    'cars': cars,
    'bikes': bikes,
    'movies': movies,
    'shows': shows,
    'foods': foods,
    'gadgets': gadgets,
    'superheroes':superheroes,
    'actors': actors,
    'actresses': actresses,
    'singers': singers,
    'players': players,
    'cities': cities,
    'countries': countries,
    'restaurants': restaurants,
    'hotels': hotels,
    'privacy_status': privacy,
    'id': id,
  };
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