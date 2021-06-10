import 'dart:html';

import 'package:http/http.dart' as http;

const urlBase =
    "https://api-petadote0.000webhostapp.com/Retorno/animaisList.php";

class Api {
  static Future getAnuncios() async {
    var url = Uri.parse(urlBase);
    return await http.get(url);
  }
}
