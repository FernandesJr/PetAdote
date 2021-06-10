import 'dart:convert';
import 'package:http/http.dart' as http;

class Anuncios {
  listarAnuncios() async {
    var list = "listar";
    //Buscar dados
    final url = Uri.parse(
        'https://api-petadote0.000webhostapp.com/Retorno/animaisList.php');

    final res = await http.post(url, body: {
      "listar": list,
    });

    final data = jsonDecode(res.body);
    print(data);
  }
}
