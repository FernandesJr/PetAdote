import 'package:pet_adote/models/usuario_model.dart';
import 'package:http/http.dart' as http;

class CadastroController {
  Usuario user;
  CadastroController({this.user});

  String verificarCampos(Usuario user, String senhaRep) {
    this.user = user;
    if (user.nome.isEmpty ||
        user.cpf.isEmpty ||
        user.tel.isEmpty ||
        user.email.isEmpty ||
        user.senha.isEmpty) {
      return "Preencha todos os campo, por favor!";
    } else {
      if (!validarSenha(senhaRep)) {
        return "Confirmação de SENHA inválida.";
      } else {
        return validarEmail();
      }
    }
  }

  //Compara senha é igual a confirmação de senha
  bool validarSenha(String senhaRep) {
    if (senhaRep == this.user.senha) {
      return true;
    } else {
      return false;
    }
  }

  //Verifica se o email é válido
  String validarEmail() {
    if (!this.user.email.contains('@')) {
      return "Email inválido, por favor verifique.";
    } else {
      //Busca no db se o email já está cadastrado
      var url = Uri.parse('');
      var res = http.post(url,
          body: {'email': this.user.email});
      return "Email válido";
    }
  }
}
