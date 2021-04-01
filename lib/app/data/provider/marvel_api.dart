import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:marvapp/app/data/model/character_model.dart';
import 'package:meta/meta.dart';

Map<String, String> queryParameters = {
  'ts': '1616695783',
  'apikey': 'da0b41050b1361bf58011d9e4bb93ec3',
  'hash': '1df52d550f27af8de3135f5aa07c664f',
};

class MarvelApi {
  final http.Client httpClient;
  MarvelApi({@required this.httpClient});

  getCharacters() async {
    try {
      var uri = Uri.https(
          'gateway.marvel.com', '/v1/public/characters', queryParameters);
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        print(data);
        return List<Characters>.from(
            data["results"].map((x) => Characters.fromJson(x)));
      }
    } catch (error) {
      print(error);
    }
  }
}
