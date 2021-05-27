import 'package:flutter/material.dart';
import 'package:pet_adote/screens/loading.dart';

class SplashHome extends StatefulWidget {
  @override
  _SplashHomeState createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2be0b5),
      //coluna da tela
      body: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 180),
              ),
              //foto do icone
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/logo_app_pet_name.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              //loading do splash
              Center(child: CustomLoading()),
            ],
          )
        ],
      ),
    );
  }

//função de passagem de pagina
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2)).then(
      (_) {
        Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
      },
    );
  }
}
