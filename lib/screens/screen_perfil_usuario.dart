import 'package:flutter/material.dart';

class Perfil_Usuario extends StatefulWidget {
  @override
  _Perfil_UsuarioState createState() => _Perfil_UsuarioState();
}

class _Perfil_UsuarioState extends State<Perfil_Usuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/img/logo_app_pet_name.png', height: 60),
        toolbarHeight: 70,
        backgroundColor: Color(0xff2be0b5),
      ),

      //body
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //foto do perfil
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://www.clubeparacachorros.com.br/wp-content/uploads/2018/05/filhote-golden-correndo.jpg"))),
                        ),
                      ],
                    ),

                    //nome do perfil
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Marcones Lira da Silva Santos Amorim",
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //dar espaço
              SizedBox(
                height: 20,
              ),

              Container(
                margin: EdgeInsets.only(
                  left: 30,
                ),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    children: const <TextSpan>[
                      //Texto de estado
                      TextSpan(
                        text: 'Estado: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),
                      //aqui sera o que vai vir do banco o estado
                      TextSpan(
                        text: 'Pernambuco\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      //Texto de cidade
                      TextSpan(
                        text: 'Cidade: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),
                      //aqui sera o que vai vir do banco a cidade
                      TextSpan(
                        text: 'Lagoa dos gato\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      //Texto de bairro
                      TextSpan(
                        text: 'Bairro: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),

                      //aqui sera o que vai vir do banco o bairro
                      TextSpan(
                        text: 'bairo do centro dos gatos\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      //Texto de rua
                      TextSpan(
                        text: 'Rua: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),

                      //aqui sera o que vai vir do banco a rua
                      TextSpan(
                        text: 'rua dos gato espantado\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      //Texto de CEP
                      TextSpan(
                        text: 'CEP: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),

                      //aqui sera o que vai vir do banco o CEP
                      TextSpan(
                        text: '55555-000\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      //Texto de Contato
                      TextSpan(
                        text: 'Telefone: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),

                      //aqui sera o que vai vir do banco o Contato
                      TextSpan(
                        text: '(81) 90909-0909\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
