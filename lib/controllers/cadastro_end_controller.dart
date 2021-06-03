import 'dart:convert';

import 'package:pet_adote/models/usuario_model.dart';
import 'package:http/http.dart' as http;

class CadastroEndController {
  Usuario user;

  Future<String> verificarCampos(Usuario user) async {
    this.user = user;
    if (user.estado.isEmpty ||
        user.cidade.isEmpty ||
        user.bairro.isEmpty ||
        user.rua.isEmpty ||
        user.numero.isEmpty ||
        user.cep.isEmpty) {
      return "Preencha todos os campo, por favor!";
    } else {
      //Cadastrar User no DB
      var url = Uri.parse('linkAPI');
      //toJson converte um Usuario para Json
      var res = await http.post(url, body: user.toJson());
      if (jsonDecode(res.body) == "Cadastro realizado com sucesso") {
        //Gravou no DB

      }
      print(res.body);
      return "Confirmado";
    }
  }
}
