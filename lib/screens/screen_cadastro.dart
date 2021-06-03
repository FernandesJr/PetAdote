import 'package:flutter/material.dart';
import 'package:pet_adote/controllers/cadastro_controller.dart';
import 'package:pet_adote/models/usuario_model.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pet_adote/screens/screen_cadastro_end.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerCpf = TextEditingController();
  TextEditingController controllerTel = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();
  TextEditingController controllerRepSenha = TextEditingController();
  Usuario user = Usuario();
  //Controller da View
  CadastroController controlador = CadastroController();

  //Mascaras
  var maskTel = new MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});
  var maskCpf = new MaskTextInputFormatter(
      mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //barra da tela cadastro
        title: Text(
          'Cadastro de usuário',
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
              //Foto do perfil
              CircleAvatar(
                child: Image.asset('assets/img/img_perfil.jpg'),
                radius: 65,
              ),

              //Form de Nome completo
              TextFormField(
                controller: controllerNome,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Nome completo",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de CPF
              TextFormField(
                inputFormatters: [maskCpf],
                controller: controllerCpf,
                autofocus: false,
                keyboardType: TextInputType.number,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "CPF",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Numero
              TextFormField(
                inputFormatters: [maskTel],
                controller: controllerTel,
                autofocus: false,
                keyboardType: TextInputType.number,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Telefone (Whatsapp)",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de E-mail
              TextFormField(
                controller: controllerEmail,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Senha
              TextFormField(
                controller: controllerSenha,
                autofocus: false,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Repetir senha
              TextFormField(
                controller: controllerRepSenha,
                autofocus: false,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Repetir senha",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(),

              //Botao Cadastrar
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Color(0xff2be0b5),
                  //
                  //ação ao apertar o botao
                  onPressed: () => {
                    //Navigator.pushNamed(context, '/cadastro2'),
                    this.criarUser()
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Próximo",
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

  void criarUser() {
    this.user.nome = this.controllerNome.text;
    this.user.cpf = this.controllerCpf.text;
    this.user.tel = this.controllerTel.text;
    this.user.email = this.controllerEmail.text;
    this.user.senha = this.controllerSenha.text;
    this.proximo();
  }

  //Iráverificar se todos os campos estão preenchido
  //Conferir a senha digitada
  void proximo() {
    String res = this
        .controlador
        .verificarCampos(this.user, this.controllerRepSenha.text);
    if (res == "Email válido") {
      //Manda para continuação do cadastro
      Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => Cadastro_end(user: this.user),
          ));
    } else {
      setState(() {
        final snackBar =
            SnackBar(content: Text(res), backgroundColor: Colors.red.shade200);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }
  }
}
