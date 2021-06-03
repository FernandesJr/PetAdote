import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pet_adote/controllers/cadastro_end_controller.dart';
import 'package:pet_adote/models/usuario_model.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';

class Cadastro_end extends StatefulWidget {
  Usuario user;
  Cadastro_end({this.user});
  @override
  _Cadastro_endState createState() => _Cadastro_endState();
}

class _Cadastro_endState extends State<Cadastro_end> {
  Usuario usuario;
  CadastroEndController controlador = CadastroEndController();
  @override
  void initState() {
    super.initState();
    //Usuário que vem da primeira tela de cadastro
    this.usuario = widget.user;
    print('Recebi na continuação do cadastro o usuário: ' + usuario.nome);
  }

  //variavel do checkbox para verificação
  bool _sel = false;
  //TextFilds
  TextEditingController controllerEstado = TextEditingController();
  TextEditingController controllerCidade = TextEditingController();
  TextEditingController controllerBairro = TextEditingController();
  TextEditingController controllerRua = TextEditingController();
  TextEditingController controllerNum = TextEditingController();
  TextEditingController controllerCep = TextEditingController();

  //Mascaras
  var maskNum =
      new MaskTextInputFormatter(mask: '####', filter: {"#": RegExp(r'[0-9]')});
  var maskCep = new MaskTextInputFormatter(
      mask: '#####-###', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra da tela cadastro
      appBar: AppBar(
        centerTitle: true,
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

      //body com o container
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 30,
          right: 30,
          bottom: 10,
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              //
              //Form de Estado
              TextFormField(
                controller: controllerEstado,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Estado",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Cidade
              TextFormField(
                controller: controllerCidade,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Cidade",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Bairro
              TextFormField(
                controller: controllerBairro,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Bairro",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Rua
              TextFormField(
                controller: controllerRua,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Rua",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Número da casa
              TextFormField(
                inputFormatters: [maskNum],
                controller: controllerNum,
                autofocus: false,
                keyboardType: TextInputType.number,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Número",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de CEP
              TextFormField(
                inputFormatters: [maskCep],
                controller: controllerCep,
                autofocus: false,
                keyboardType: TextInputType.number,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "CEP",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              Divider(),

              //botao termos de uso
              Row(
                children: <Widget>[
                  ButtonTheme(
                    height: 60,
                    child: RaisedButton(
                      onPressed: () => {
                        Navigator.pushNamed(context, '/termouso'),
                      },
                      color: Color.fromRGBO(211, 211, 211, 1),
                      child: Text(
                        "Aceito Todos os termos\n" "uso deste aplicativo",
                        style: TextStyle(
                          fontFamily: 'KGred',
                          color: Colors.orangeAccent,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  //checkbox
                  Checkbox(
                    value: _sel,
                    onChanged: (bool resp) {
                      setState(() {
                        _sel = resp;
                      });
                    },
                  ),
                ],
              ),

              Divider(),

              //Botao Cadastrar
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Color(0xff2be0b5),
                  //ação do botao cadastrar
                  onPressed: () => {
                    //Navigator.pushReplacementNamed(context, '/splashcadastro'),
                    cadastrar()
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Finalizar Cadastro",
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

  void cadastrar() {
    this.usuario.estado = this.controllerEstado.text;
    this.usuario.cidade = this.controllerCidade.text;
    this.usuario.bairro = this.controllerBairro.text;
    this.usuario.rua = this.controllerRua.text;
    this.usuario.numero = this.controllerNum.text;
    this.usuario.cep = this.controllerCep.text;

    //Pricisa converter o retorn em String
    String res = this.controlador.verificarCampos(this.usuario).toString();

    if (res == "Confirmado" && this._sel) {
      //Cadastra no banco e manda para tela principal
      Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => HomeScreen(user: this.usuario),
          ));
    } else {
      if (!_sel) {
        res = "Aceite o termo de uso para continuar.";
      }
      setState(() {
        final snackBar =
            SnackBar(content: Text(res), backgroundColor: Colors.red.shade200);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }
  }
}
