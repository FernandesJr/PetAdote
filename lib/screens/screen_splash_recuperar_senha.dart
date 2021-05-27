import 'package:flutter/material.dart';
import 'package:pet_adote/screens/loading.dart';

class SplashRecuperaSenha extends StatefulWidget {
  @override
  _SplashRecuperaSenhaState createState() => _SplashRecuperaSenhaState();
}

class _SplashRecuperaSenhaState extends State<SplashRecuperaSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //body da tela
      body: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 100),
              ),
              //foto do icone
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/RecuperarSenha.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Sua Senha foi enviada\n"
                  "para o e-mail cadastrado\n",
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
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    });
  }
}
