import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pet_adote/servicos/firebase.dart';
 //Apelida a API

class LoginController {

  //cadastrar não tem que esta aqui
  signUp(String email, String senha) async {
    //Aqui na URI EM VEZ DE PASSAR O OBJ ele passou a string da rota, porém, na versão 12. estou usando a versão 13
    //Uri uri = Uri.https(FirebaseServicos.signUp(), "/");
    //Para dastrar uma senha precisa ser maior que 6 caracteres
    http.Response response = await http.post(FirebaseServicos.signUp,
        body: json.encode({
          "email": email,
          "password": senha,
          "returnSecureToken": true,
        }));
    print(response.body);
  }

  logar(String email, String senha) async {
    http.Response response = await http.post(FirebaseServicos.login,
        body: json.encode({
          "email": email,
          "password": senha,
          "returnSecureToken": true,
        }));
    print(response.body);
  }


  
}
