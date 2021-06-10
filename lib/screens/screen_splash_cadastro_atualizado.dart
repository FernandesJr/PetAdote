import 'package:flutter/material.dart';
import 'package:pet_adote/models/usuario_model.dart';
import 'package:pet_adote/screens/loading.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';

class Splash_atualizado extends StatefulWidget {
  Usuario user;
  Splash_atualizado({this.user});
  @override
  _Splash_atualizadoState createState() => _Splash_atualizadoState();
}

class _Splash_atualizadoState extends State<Splash_atualizado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 100,
                ),
              ),
              //foto do icone
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/gato.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Informações atualizadas\n"
                  "com sucesso!\n",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 20,
                    color: Colors.orangeAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              //loading do splash
              Center(
                child: CustomLoading(),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(
                user: widget.user,
              )));
    });
  }
}
