import 'package:flutter/material.dart';

class Atualizar_cadastro extends StatefulWidget {
  @override
  _Atualizar_cadastroState createState() => _Atualizar_cadastroState();
}

class _Atualizar_cadastroState extends State<Atualizar_cadastro> {
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
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                    labelText: "Estado",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),

              //Form de Cidade
              TextFormField(
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
                autofocus: false,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Número",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de Telefone
              TextFormField(
                autofocus: false,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Telefone (Whatsapp)",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de e-mail
              TextFormField(
                autofocus: false,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de senha
              TextFormField(
                autofocus: false,
                obscureText: true,
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
                    Navigator.pushNamed(context, '/splashatualizado'),
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
}
