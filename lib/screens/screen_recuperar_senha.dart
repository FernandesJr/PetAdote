import 'package:flutter/material.dart';

class Recuperar_senha extends StatefulWidget {
  @override
  _Recuperar_senhaState createState() => _Recuperar_senhaState();
}

class _Recuperar_senhaState extends State<Recuperar_senha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar com recuperar senha
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Recuperar Senha',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 30,
            color: Colors.orangeAccent,
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),

      //body
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          right: 40,
          left: 40,
        ),
        child: ListView(
          children: <Widget>[
            //texto informe seu email
            Text(
              "Informe seu E-mail",
              style: TextStyle(
                fontFamily: 'KGred',
                fontSize: 18,
                color: Colors.orangeAccent,
              ),
            ),

            //form de email
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),

            //sizebox para espaçamento
            SizedBox(
              height: 370,
            ),

            //Botão Recuperar Senha
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Color(0xff2be0b5),
                //Ação do Botao
                onPressed: () => {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/splashrecuperar', (route) => false),
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Recuperar Senha",
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
    );
  }
}
