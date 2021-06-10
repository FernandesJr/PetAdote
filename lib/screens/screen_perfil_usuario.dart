import 'package:flutter/material.dart';
import 'package:pet_adote/models/usuario_model.dart';

class Perfil_Usuario extends StatefulWidget {
  Usuario user;
  Perfil_Usuario({this.user});
  @override
  _Perfil_UsuarioState createState() => _Perfil_UsuarioState();
}

class _Perfil_UsuarioState extends State<Perfil_Usuario> {
  Usuario usuario;
  var jsonUser;

  @override
  void initState() {
    usuario = widget.user;
    jsonUser = usuario.toJson();
    super.initState();
  }

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
                        this.usuario.nome,
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
                  child: Column(
                    children: [
                      //Estado
                      Row(
                        children: [
                          Text(
                            "Estado: ",
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 15,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            this.usuario.estado,
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      //cidade
                      Row(
                        children: [
                          Text(
                            "Cidade: ",
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 15,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            this.usuario.cidade,
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      //Bairro
                      Row(
                        children: [
                          Text(
                            "Bairro: ",
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 15,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            this.usuario.bairro,
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      //Rua
                      Row(
                        children: [
                          Text(
                            "Rua: ",
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 15,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            this.usuario.rua,
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      //cep
                      Row(
                        children: [
                          Text(
                            "CEP: ",
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 15,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            this.usuario.cep,
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      //Tel
                      Row(
                        children: [
                          Text(
                            "Telefone: ",
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 15,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            this.usuario.tel,
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
