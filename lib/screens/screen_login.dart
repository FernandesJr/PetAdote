import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pet_adote/controllers/login_controller.dart'; //Apelida a API

class Login extends StatelessWidget {
  TextEditingController emailTxt = TextEditingController();
  TextEditingController senhaTxt = TextEditingController();
  LoginController controllerView = LoginController();

  Uri url =
      Uri.http('pet-adote-33f93-default-rtdb.firebaseio.com', '/usuarios.json');

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
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),

              //Form de Email
              TextFormField(
                controller: this.emailTxt,
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
                controller: this.senhaTxt,
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
                child: TextButton(
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
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff2be0b5)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(220, 50))),
                  //ação do botao
                  onPressed: () => {
                    Navigator.pushNamedAndRemoveUntil(
                    context, '/homescreen', (route) => false),
                    //logar()
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
                child: TextButton(
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
                  //ação ao aperta o botao cadastrar
                  onPressed: () {
                    //cadastrar();
                    Navigator.pushNamed(context, "/cadastro");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Apenas para conhecimento

  //Url do database firebase

  // ignore: unused_element
  void _conexao() {
    http
        .post(url,
            body: json.encode(
                {"email": this.emailTxt.text, "senha": this.senhaTxt.text}))
        .then((value) => {
              //Caso dê certo execulta aqui
              //Value contêm a resposta do servidor
              print("Envie o email: " + this.emailTxt.text)
            });
  }

  List<String> usuarios = <String>[];
  //Apenas para conhecimento
  // ignore: unused_element
  Future<void> _getUsers() {
    return http.get(url).then((response) {
      //response.body retorna a query em Json
      //O map armazana em formato de Lista
      Map<String, dynamic> map = json.decode(response.body);
      usuarios = [];
      //For no map
      map.forEach((key, value) {
        //Key é a chave do user
        usuarios.add(map[key]["email"]);
        usuarios.add(map[key]["senha"]);
        usuarios.add("--------");
      });
      //Varrendo toda lisa
      usuarios.forEach((element) {
        print(element);
      });
      print(response.body);
    });
  }

  //Aqui na vera
  void cadastrar() {
    controllerView.signUp(emailTxt.text, senhaTxt.text);
  }

  void logar() {
    controllerView.logar(emailTxt.text, senhaTxt.text);
  }
}
