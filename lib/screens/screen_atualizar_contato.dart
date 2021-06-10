import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pet_adote/models/usuario_model.dart';
import 'package:http/http.dart' as http;
import 'package:pet_adote/screens/screen_splash_cadastro_atualizado.dart';

class Atualizar_cadastro extends StatefulWidget {
  Usuario user = Usuario();

  Atualizar_cadastro({this.user}) {
    print('Cheguei na ATUALIZAÇÃO COM O USER: ' + user.nome);
  }
  @override
  _Atualizar_cadastroState createState() => _Atualizar_cadastroState();
}

class _Atualizar_cadastroState extends State<Atualizar_cadastro> {
  //Mascaras
  var maskNum =
      new MaskTextInputFormatter(mask: '####', filter: {"#": RegExp(r'[0-9]')});
  var maskTel = new MaskTextInputFormatter(
      mask: '(##)#####-####', filter: {"#": RegExp(r'[0-9]')});
  Usuario usuario;
  String emailInicial;
  @override
  void initState() {
    usuario = widget.user;
    emailInicial = usuario.email;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        centerTitle: true,
        //barra da tela cadastro
        title: Text(
          'Contatos e Endereço',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 26,
            color: Colors.orangeAccent,
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),

      //body cadastro com container
      body: Container(
        padding: EdgeInsets.only(
          top: 8,
          left: 30,
          right: 30,
          bottom: 10,
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              //Form de Estado
              TextFormField(
                onChanged: (value) {
                  this.usuario.estado = value;
                },
                initialValue: this.usuario.estado,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                    labelText: "Estado",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),

              //Form de Cidade
              TextFormField(
                onChanged: (value) {
                  this.usuario.cidade = value;
                },
                initialValue: this.usuario.cidade,
                autofocus: false,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Cidade",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de Bairro
              TextFormField(
                onChanged: (value) {
                  this.usuario.bairro = value;
                },
                initialValue: this.usuario.bairro,
                autofocus: false,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Bairro",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de Rua
              TextFormField(
                onChanged: (value) {
                  this.usuario.rua = value;
                },
                initialValue: this.usuario.rua,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Rua",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de Número
              TextFormField(
                inputFormatters: [maskNum],
                onChanged: (value) {
                  this.usuario.numero = value;
                },
                initialValue: this.usuario.numero,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Número",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de Telefone
              TextFormField(
                inputFormatters: [maskTel],
                onChanged: (value) {
                  this.usuario.tel = value;
                },
                initialValue: this.usuario.tel,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Telefone (Whatsapp)",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de nome
              TextFormField(
                onChanged: (value) {
                  this.usuario.nome = value;
                },
                initialValue: this.usuario.nome,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de e-mail
              TextFormField(
                onChanged: (value) {
                  this.usuario.email = value;
                },
                initialValue: this.usuario.email,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de senha
              TextFormField(
                onChanged: (value) {
                  this.usuario.senha = value;
                },
                initialValue: this.usuario.senha,
                autofocus: false,
                obscureText: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Nova senha",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Divider(),

              //Botao Atualizar
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Color(0xff2be0b5),
                  //ação ao apertar o botao
                  onPressed: () => {
                    validarCampos()
                    //Navigator.pushNamed(context, '/splashatualizado'),
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Atualizar",
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
            ],
          ),
        ),
      ),
    );
  }

  void validarCampos() {
    //Verificando se todos os campos estão preenchidos corretamente
    if (this.usuario.estado.isEmpty ||
        this.usuario.cidade.isEmpty ||
        this.usuario.bairro.isEmpty ||
        this.usuario.rua.isEmpty ||
        this.usuario.numero.isEmpty ||
        this.usuario.tel.isEmpty ||
        this.usuario.nome.isEmpty ||
        this.usuario.email.isEmpty ||
        this.usuario.senha.isEmpty) {
      setState(() {
        final snackBar = SnackBar(
            content: Text("Preencha todos os campos por favor."),
            backgroundColor: Colors.red.shade200);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    } else if (!this.usuario.email.contains("@")) {
      setState(() {
        final snackBar = SnackBar(
            content: Text("Email inválido, por favor verifique."),
            backgroundColor: Colors.red.shade200);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    } else {
      atualizarCad();
    }
  }

  void atualizarCad() async {
    if (this.emailInicial != this.usuario.email) {
      //Url da API
      var url = Uri.parse(
          'https://api-petadote0.000webhostapp.com/Retorno/usuarioCadastroEmail.php');
      //Método post, válidar se o email já está sendo utiliado por outro usuário
      var res = await http.post(url, body: {"email": this.usuario.email});
      //Verificar se o novo email já não está sendo utilizado por outro usuário
      if (jsonDecode(res.body) == "EmailNaoEncontrado") {
        atualizar();
      } else {
        setState(() {
          final snackBar = SnackBar(
              content: Text("Email já cadastrado, por favor verifique."),
              backgroundColor: Colors.red.shade200);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      }
    } else {
      atualizar();
    }
  }

  Future<void> atualizar() async {

    var url = Uri.parse(
        'https://api-petadote0.000webhostapp.com/Retorno/usuarioEditar.php');
    //Método post, válidar se o email já está sendo utiliado por outro usuário
    var res = await http.post(url, body: this.usuario.toJson());
    if (jsonDecode(res.body) == "Atualizado com sucesso") {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Splash_atualizado(
                user: this.usuario,
              )));
    } else {
      setState(() {
        final snackBar = SnackBar(
            content: Text("Tivemos algum problema de conexão, desculpa."),
            backgroundColor: Colors.red.shade200);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }
  }
}
