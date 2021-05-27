import 'package:flutter/material.dart';
import 'package:pet_adote/screens/loading.dart';

class SplashAtualizado extends StatefulWidget {
  @override
  _SplashAtualizadoState createState() => _SplashAtualizadoState();
}

class _SplashAtualizadoState extends State<SplashAtualizado> {
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
      Navigator.pushNamedAndRemoveUntil(
          context, '/homescreen', (route) => false);
    });
  }
}
