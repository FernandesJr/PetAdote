import 'dart:convert';
import 'package:pet_adote/models/usuario_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pet_adote/screens/screens_splash_adocao.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Cadastropet extends StatefulWidget {
  Usuario user = Usuario();
  Cadastropet({this.user});
  @override
  _CadastropetState createState() => _CadastropetState();
}

class _CadastropetState extends State<Cadastropet> {
  //Controller para recuperar valores
  final myControllerNome = TextEditingController();
  final myControllerRaca = TextEditingController();
  final myControllerCor = TextEditingController();
  final myControllerSexo = TextEditingController();
  final myControllerIdade = TextEditingController();
  final myControllerPorte = TextEditingController();
  final myControllerEspecie = TextEditingController();
  final myControllerDescricao = TextEditingController();

  //Mascaras
  var maskNum =
      new MaskTextInputFormatter(mask: '####', filter: {"#": RegExp(r'[0-9]')});

  getApi() async {
    final url = Uri.parse(
        'http://api-petadote0.000webhostapp.com/Retorno/CadastrarAnimal.php');
    final res = await http.post(url, body: {
      "nome": this.myControllerNome.text,
      "raca": this.myControllerRaca.text,
      "cor": this.myControllerCor.text,
      "sexo": this.myControllerSexo.text,
      "idade": this.myControllerIdade.text,
      "porte": this.myControllerPorte.text,
      "especie": this.myControllerEspecie.text,
      "descricao": this.myControllerDescricao.text,
      "telUser": widget.user.tel,
    });

    final data = jsonDecode(res.body);

    if (data == "Sucesso") {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Splash_adocao(user: widget.user)));
    } else {
      setState(() {
        final snackBar = SnackBar(
            content: Text('Preencha os dados'),
            backgroundColor: Colors.red.shade200);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra da tela cadastro de pet
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cadastro pet',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 30,
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

              //Form de Nome
              TextFormField(
                autofocus: false,
                controller: myControllerNome,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                ////// ATENÇÂO LIMITEM ESSE CAMPO A DIGITAR NO MAXIMO 11 DIGITOS PARA QUE NAO OCORRA UM BUG NO PERFIL DO PET
                decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Especie
              TextFormField(
                controller: myControllerEspecie,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Espécie",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Cor
              TextFormField(
                controller: myControllerCor,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Cor",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de raça
              TextFormField(
                controller: myControllerRaca,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Raça",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Sexo
              TextFormField(
                controller: myControllerSexo,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Sexo",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Porte
              TextFormField(
                inputFormatters: [maskNum],
                controller: myControllerPorte,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Porte",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de idade
              TextFormField(
                inputFormatters: [maskNum],
                controller: myControllerIdade,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Idade",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Divider(),

              //Form de breve descrição
              TextFormField(
                controller: myControllerDescricao,
                maxLines: 5,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(12, 20, 12, 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Breve descrição",
                ),
              ),
              Divider(),

              //Botao Cadastrar
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Color(0xff2be0b5),
                  //Ação do botão
                  onPressed: () => {
                    // Navigator.pushNamedAndRemoveUntil(
                    //context, '/splashadocao', (route) => false)
                    getApi()
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Colocar para adoção",
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
}
