import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pet_adote/models/usuario_model.dart';
import 'package:pet_adote/servicos/firebase.dart';

class CadastroUserController {
  final Usuario _newUser;

  CadastroUserController(this._newUser);

  /*CadastroUserController(
      String nome, String cpf, String tel, String email, String senha) {
    _newUser.nome = nome;
    _newUser.cpf = cpf;
    _newUser.tel = tel;
    _newUser.email = email;
    _newUser.senha = senha;
    print(_newUser.nome);
  }*/



  void salveUserDB() {
    http
        .post(FirebaseServicos.url,
            body: json.encode({
              "nome": _newUser.nome,
              "cpf": _newUser.cpf,
              "tel": _newUser.tel,
              "email": _newUser.email,
              "senha": _newUser.senha
            }))
        .then((value) => {
              //Caso dê certo execulta aqui
              //Value contêm a resposta do servidor
              print("Envie o email p/ db: " + _newUser.email),
              print(value.body)
            });
  }
}
