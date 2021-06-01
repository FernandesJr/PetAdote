import 'package:flutter/material.dart';

class Cadastro_end extends StatefulWidget {
  @override
  _Cadastro_endState createState() => _Cadastro_endState();
}

class _Cadastro_endState extends State<Cadastro_end> {
//variavel do checkbox para verificação
  bool _sel = false;

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
                    Navigator.pushReplacementNamed(context, '/splashcadastro'),
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
}
