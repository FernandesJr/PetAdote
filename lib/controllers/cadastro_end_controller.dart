import 'dart:convert';

import 'package:pet_adote/models/usuario_model.dart';
import 'package:http/http.dart' as http;

class CadastroEndController {
  Usuario user;
  String msg;
  bool termo;

  void verificarCampos() async {
    if (user.estado.isEmpty ||
        user.cidade.isEmpty ||
        user.bairro.isEmpty ||
        user.rua.isEmpty ||
        user.numero.isEmpty ||
        user.cep.isEmpty) {
      this.msg = "Preencha todos os campo, por favor!";
    } else if (!termo) {
      //Verifica se o usuário aceitou os termos de uso.
      this.msg = "Aceite o termo de uso para continuar.";
    } else {
      //Cadastrar User no DB
      this.msg = "Processando...";
      var url = Uri.parse('https://api-petadote0.000webhostapp.com/Retorno/usuariosCadastro.php');
      //toJson converte um Usuario para Json
      var res = await http.post(url, body: user.toJson());
      if (jsonDecode(res.body) == "Cadastro realizado com sucesso") {
        //Gravou no DB
        print(res.body);
      }
      print(this.user.toJson());
      this.msg = "Confirmado";
    }
  }

  String validar(Usuario usuario, bool ter) {
    this.user = usuario;
    this.user.imagem = "img.png";
    this.termo = ter;
    this.verificarCampos();
    return this.msg;
  }
}
