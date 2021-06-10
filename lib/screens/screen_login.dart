import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:pet_adote/controllers/login_controller.dart';
import 'package:pet_adote/models/usuario_model.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Armazena as informações digitadas pelo o usuário ao tentar logar
  TextEditingController _emailTxt = TextEditingController();
  TextEditingController _senhaTxt = TextEditingController();
  //Controlador da View
  LoginController controlador = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar com o icone do pet adote
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/img/logo_app_pet_name.png',
          width: 210,
        ),
        toolbarHeight: 190,
        backgroundColor: Color(0xff2be0b5),
      ),

      //parte do body com os forms e buttons
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: 30,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),

            //Form de Email
            TextFormField(
              controller: this._emailTxt,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'KGred',
                ),
              ),
            ),

            //sizebox para dar espaço
            SizedBox(
              height: 10,
            ),

            //Form de Senha
            TextFormField(
              controller: this._senhaTxt,
              keyboardType: TextInputType.text,
              obscureText: true,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'KGred',
                ),
              ),
            ),

            //botao Recuperar senha
            Container(
              height: 50,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Esqueceu a senha?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontFamily: 'KGred',
                  ),
                ),
                //
                //ação do botao
                onPressed: () => {
                  Navigator.pushNamed(context, '/recuperarsenha'),
                },
              ),
            ),

            //sizedbox pra dar espaço
            SizedBox(
              height: 30,
            ),

            //botao Login
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Color(0xff2be0b5),
                //
                //ação do botao
                onPressed: () => {
                  //Navigator.pushNamedAndRemoveUntil(
                  //context, '/homescreen', (route) => false),
                  this.logar()
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'KGred',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset('assets/img/paw_icon.png'),
                        height: 28,
                        width: 28,
                      ),
                    )
                  ],
                ),
              ),
            ),

            //botao cadastre-se
            Container(
              height: 60,
              margin: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Para doar ou adotar\n" "Cadastre-se",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'KGred',
                    fontSize: 16,
                  ),
                ),
                //
                //ação ao aperta o botao
                onPressed: () => {
                  Navigator.pushNamed(context, '/cadastro'),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Ação do botão logar
  void logar() async {
    final url = Uri.parse(
        'https://api-petadote0.000webhostapp.com/Retorno/usuariosLogin.php');

    final res = await http.post(url, body: {
      "loginEmail": this._emailTxt.text,
      "loginSenha": this._senhaTxt.text,
    });

    final data = jsonDecode(res.body);

    if (data == "Sucesso") {
      _completeLogin();
    } else {
      setState(() {
        final snackBar = SnackBar(
            content: Text('Usuário ou Senha inválido'),
            backgroundColor: Colors.red.shade200);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }
  }

  void _completeLogin() async {
    String emailUser = this._emailTxt.text;
    Usuario user = Usuario();
    user.email = emailUser;
    //Buscar dados
    final url = Uri.parse(
        'https://api-petadote0.000webhostapp.com/Retorno/usuariosDados.php');

    final res = await http.post(url, body: {
      "email": emailUser,
    });

    final data = jsonDecode(res.body);

    //Definir dados do user logado
    user.bairro = data['bairro'];
    user.cidade = data['cidade'];
    user.cpf = data['cpf'];
    user.estado = data['estado'];
    user.id = data['id'];
    user.nome = data['nome'];
    user.numero = data['numero'];
    user.rua = data['rua'];
    user.senha = data['senha'];
    user.tel = data['celular'];
    //Estava faltando
    user.imagem = data['imagem'];
    user.cep = data['cep'];


    Fluttertoast.showToast(
        msg: user.cidade,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 20.0);

    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => HomeScreen(user: user),
      ),
    );
  }
}

void listAnuncios() async {}
